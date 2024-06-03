.model small
.stack 0100h
.data

emptyStr db "           $"

gameTitle1 db " ______            _______  _                            _       _________",'$'
gameTitle2 db "(  __  \ |\     /|(  ____ \| \    /\  |\     /||\     /|( (    /|\__   __/",'$'
gameTitle3 db "| (  \  )| )   ( || (    \/|  \  / /  | )   ( || )   ( ||  \  ( |   ) (   ",'$'
gameTitle4 db "| |   ) || |   | || |      |  (_/ /   | (___) || |   | ||   \ | |   | |   ",'$'
gameTitle5 db "| |   | || |   | || |      |   _ (    |  ___  || |   | || (\ \) |   | |   ",'$'
gameTitle6 db "| |   ) || |   | || |      |  ( \ \   | (   ) || |   | || | \   |   | |   ",'$'
gameTitle7 db "| (__/  )| (___) || (____/\|  /  \ \  | )   ( || (___) || )  \  |   | |   ",'$'
gameTitle8 db "(______/ (_______)(_______/|_/    \/  |/     \|(_______)|/    )_)   )_(   ",'$'


m1 db "  __  __ ______ _   _ _    _ ", '$'
m2 db " |  \/  |  ____| \ | | |  | |", '$'
m3 db " | \  / | |__  |  \| | |  | |", '$'
m4 db " | |\/| |  __| | . ` | |  | |", '$'
m5 db " | |  | | |____| |\  | |__| |", '$'
m6 db " |_|  |_|______|_| \_|\____/ ", '$'


i1 db "  _           _                   _   _                 ", '$'
i2 db " (_)         | |                 | | (_)                ", '$'
i3 db "  _ _ __  ___| |_ _ __ _   _  ___| |_ _  ___  _ __  ___ ", '$'
i4 db " | | '_ \/ __| __| '__| | | |/ __| __| |/ _ \| '_ \/ __|", '$'
i5 db " | | | | \__ \ |_| |  | |_| | (__| |_| | (_) | | | \__ \", '$'
i6 db " |_|_| |_|___/\__|_|   \__,_|\___|\__|_|\___/|_| |_|___/", '$'                                                      


gameover1 db "  _____          __  __ ______    ______      ________ _____  ",'$'
gameover2 db " / ____|   /\   |  \/  |  ____|  / __ \ \    / /  ____|  __ \ ",'$'
gameover3 db "| |  __   /  \  | \  / | |__    | |  | \ \  / /| |__  | |__) |",'$'
gameover4 db "| | |_ | / /\ \ | |\/| |  __|   | |  | |\ \/ / |  __| |  _  / ",'$'
gameover5 db "| |__| |/ ____ \| |  | | |____  | |__| | \  /  | |____| | \ \ ",'$'
gameover6 db " \_____/_/    \_\_|  |_|______|  \____/   \/   |______|_|  \_\",'$'
                                                               

level1Title1 db "  _                    _   __   ______           _ ",'$'
level1Title2 db " | |                  | | /_ | |  ____|         | |",'$'
level1Title3 db " | |     _____   _____| |  | | | |__   _ __   __| |",'$'
level1Title4 db " | |    / _ \ \ / / _ \ |  | | |  __| | '_ \ / _` |",'$'
level1Title5 db " | |___|  __/\ V /  __/ |  | | | |____| | | | (_| |",'$'
level1Title6 db " |______\___| \_/ \___|_|  |_| |______|_| |_|\__,_|",'$'
                                                   
level2Title1 db "  _                    _   ___    ______           _ ",'$'
level2Title2 db " | |                  | | |__ \  |  ____|         | |",'$'
level2Title3 db " | |     _____   _____| |    ) | | |__   _ __   __| |",'$'
level2Title4 db " | |    / _ \ \ / / _ \ |   / /  |  __| | '_ \ / _` |",'$'
level2Title5 db " | |___|  __/\ V /  __/ |  / /_  | |____| | | | (_| |",'$'
level2Title6 db " |______\___| \_/ \___|_| |____| |______|_| |_|\__,_|",'$'

level3Title1 db "  _                    _   ____    ______           _ ",'$'
level3Title2 db " | |                  | | |___ \  |  ____|         | |",'$'
level3Title3 db " | |     _____   _____| |   __) | | |__   _ __   __| |",'$'
level3Title4 db " | |    / _ \ \ / / _ \ |  |__ <  |  __| | '_ \ / _` |",'$'
level3Title5 db " | |___|  __/\ V /  __/ |  ___) | | |____| | | | (_| |",'$'
level3Title6 db " |______\___| \_/ \___|_| |____/  |______|_| |_|\__,_|",'$'
                                                      
option1 db "1. PLAY GAME... $"
option2 db "2. INSTRUCTION... $"

instruction1 db "Aim and Shoot: Use the mouse to aim and shoot ducks on the screen.$"
instruction2 db "Score Points: Hit ducks to earn points. Missed shots end the round.$"
instruction3 db "Game Over: Finish when rounds end or too many misses. See your final score.$"

scorestr db "Score: $"
score dw 0

lifestr db "Life: $"
life db 3

bulletstr db "Bullets: $"
bullets dw ?

levelstr db "Level: $"
level db 1

entername db  0Ch, 0Ah, 0Ch, 0Ah, 0Ch, 0Ah, 0Ch, 0Ah, "              ENTER YOUR NAME : $"
username db 255 dup('$')

pauseStr db " G A M E    P A U S E D ", '$'

Cursor_row db 0
Cursor_col db 0

aim_row db 15
aim_col db 20

d_row db ?
d_col db ?

d2_row db ?
d2_col db ?

d3_row db ?
d3_col db ?

duckSlow db 3
gameSlow dw 4

duckIteration db 0

ducks db ?

scoreFile db "scorefile.txt",0

namestr db "Name: $"

newline dw 0A0Ch

filehandle dw ?
temp db ?

freq dw ?

.code
main PROC

mov ax, @data
mov ds, ax

call clear



call clear
call menu

;video mode (graphic)
mov ah, 0
mov al, 13h
int 10h


call drawGame


call resetDuck


call setDuckCount


game:

call printLevel


call setAim

call printScore
call printLife
call printBullets



call delay

;;-------important part takes input without stopping the program
mov ah,06h
mov dl,0FFh
int 21h
;;-------important part takes input without stopping the program



;;to pause the game
cmp al,'p'
jne dontPause

    call beep

    mov Cursor_row, 13
    mov Cursor_col, 7
    call movCursor
    mov dx, offset pauseStr
    call printStr

    call getchar
    call beep
    call drawGame
dontPause:

cmp al,27
je exit

cmp life,0
je exit

cmp al,32
jne skipshoot
    cmp bullets, 0
    je skipshoot
        call shoot
skipshoot:

; cmp life,0
; je exit

call updateAim

;; ---------------------------vvvvv     duck move     vvvvv--------------------------- ;;
inc duckIteration
mov bl, duckIteration
cmp bl, duckSlow
jne dontMove

cmp level,2
jnge dontMove2Ducks

    call setDuck2

dontMove2Ducks:


cmp level,3
jne dontMove3Ducks

    call setDuck3

dontMove3Ducks:

call setDuck
mov duckIteration,0
dontMove:
;; ---------------------------^^^^^     duck move     ^^^^^--------------------------- ;;

call delay


cmp ducks,0
jne skipLevelChange

    cmp level,3
    je exit
    call changeLevel
    call setDuckCount
    call drawGame

skipLevelChange:



jmp game



exit:

call file
call gameover


mov ah, 4ch
int 21h


main ENDP

file Proc

    mov username[0],' '
    mov username[1],' '

    mov AH, 3Ch
    mov CX, 0
    mov DX, offset scoreFile
    int 21h

    mov filehandle, ax

    mov bx, filehandle
    mov ax, 0
    mov ah, 40h
    mov cx, 7
    mov dx, offset namestr
    int 21h

    mov bx, filehandle
    mov ax, 0
    mov ah, 40h
    mov cx, 255
    mov dx, offset username
    int 21h

    mov bx, filehandle
    mov ax, 0
    mov ah, 40h
    mov cx, 2
    mov dx, offset newline
    int 21h


    mov bx, filehandle
    mov ax, 0
    mov ah, 40h
    mov cx, 7
    mov dx, offset scorestr
    int 21h

    

    ;; vvvvv ------------ Write Score ------------ vvvvv
    mov ax, score
    mov cx, 0
    conn:
    
    mov dx,0
    mov bx, 10
    div bx

    push dx
    inc cx

    cmp ax,0
    jne conn

    writeNumLoop:


        mov bx, filehandle
        mov dx,0
        mov ax, 0
        mov ah, 40h
        
        pop dx
        mov temp, dl
        push cx
        add temp, 30h
        mov cx, 1
        mov dx, offset temp
        
        int 21h

        pop cx


    loop writeNumLoop

    ;; ^^^^^ ------------ Write Score ------------ ^^^^^

    ret
file ENDP

changeLevel Proc

    call clear
    
    call newlevelSound

    mov ah, 0      ;video mode
    mov al, 12      ; 80x25 (text mode)  
    int 10h
 
    MOV AH, 06h    ; Scroll up function
    XOR AL, AL     ; Clear entire screen
    XOR CX, CX     ; Upper left corner CH=row, CL=column
    MOV DX, 184FH  ; lower right corner DH=row, DL=column 
    MOV BH, 00100100b    ; RedOnLightGreen
    INT 10H
    
    cmp level, 1
    

    mov d_col,0
    mov d2_col,0
    mov d3_col,0

    jne dontDrawLevel1End

        call drawLevel1
        
        call getchar
        
        ;;slow the game for level 2
        ;;mov gameSlow, 3
        ;;reset lives for level 2
        mov life, 6
        
        call resetDuck2


        jmp endLevelDraw

    dontDrawLevel1End:


    cmp level,2

    jne dontDrawLevel2

        call drawLevel2

        call getchar

        ;;slow the game for level 2
        ;;mov gameSlow, 2
        ;;reset lives for level 2
        mov life, 9
        call resetDuck3

        jmp endLevelDraw

    dontDrawLevel2:


    cmp level,3

    jne dontDrawLevel3

        call drawLevel3

        call getchar
        jmp endLevelDraw

    dontDrawLevel3:


    endLevelDraw:

    inc level

    call getchar
    call getchar

    ret
changeLevel ENDP

setDuckCount PROC

    cmp level, 1
    jne notlevel1
    
        mov ducks, 10
        mov bullets, 15

    notlevel1:

    cmp level, 2
    jne notlevel2

        mov ducks, 15
        mov bullets, 25

    notlevel2:

    cmp level, 3
    jne notlevel3

        mov ducks, 20
        mov bullets, 35

    notlevel3:


    ret
setDuckCount ENDP

drawGame PROC

    ;video mode (graphic)
    mov ah, 0
    mov al, 13h
    int 10h


    ;; BLUE BOX


    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, 0     ;top row of window
    mov cl, 0     ;left most column of window
    mov dh, 24     ;Bottom row of window
    mov dl, 39     ;Right most column of window
    int 10h


    ;; GREEN BOX


    mov ah, 6
    mov al, 0
    mov bh, 2     ;color
    mov ch, 17     ;top row of window
    mov cl, 0     ;left most column of window
    mov dh, 24     ;Bottom row of window
    mov dl, 39     ;Right most column of window
    int 10h


    ;;BROWN BOX


    mov ah, 6
    mov al, 0
    mov bh, 6     ;color
    mov ch, 22     ;top row of window
    mov cl, 0     ;left most column of window
    mov dh, 24     ;Bottom row of window
    mov dl, 39     ;Right most column of window
    int 10h


    ;;temp sprite


    ; mov ah, 6
    ; mov al, 0
    ; mov bh, 6     ;color
    ; mov ch, 6     ;top row of window
    ; mov cl, 33     ;left most column of window
    ; mov dh, 8     ;Bottom row of window
    ; mov dl, 35     ;Right most column of window
    ; int 10h

        


    ;;BLACK BOXES


    mov ah, 6
    mov al, 0
    mov bh, 0     ;color
    mov ch, 24     ;top row of window
    mov cl, 0     ;left most column of window
    mov dh, 24     ;Bottom row of window
    mov dl, 10     ;Right most column of window
    int 10h

    mov Cursor_row, 24
    mov Cursor_col, 0
    call movCursor
    mov dx, offset username + 2
    call printStr


    mov ah, 6
    mov al, 0
    mov bh, 0     ;color
    mov ch, 24     ;top row of window
    mov cl, 15     ;left most column of window
    mov dh, 24     ;Bottom row of window
    mov dl, 25     ;Right most column of window
    int 10h


    mov ah, 6
    mov al, 0
    mov bh, 0     ;color
    mov ch, 24     ;top row of window
    mov cl, 32     ;left most column of window
    mov dh, 24     ;Bottom row of window
    mov dl, 39     ;Right most column of window
    int 10h

    ret

drawGame ENDP

random PROC

    call delay

    mov ah, 00h  ; interrupts to get system time        
    int 1Ah      ; CX:DX now hold number of clock ticks since midnight      

    mov ax, dx
    mov dx, 0
    mov bx, 14
    
    div bx
    

    ret
random ENDP

delay PROC

    mov dx, gameSlow

    delayMore:
    dec dx
    mov cx, 30000

    delayloop:
    loop delayloop

    cmp dx,0
    jne delayMore
    

    ret
delay ENDP


resetBuffer Proc

    mov ah, 0Ch
    mov al, 0Ah

    ret
resetBuffer ENDP

clear PROC

    mov ah, 00h     ; Set video mode to clear the screen
    mov al, 03h     ; VGA 80x25 text mode
    int 10h         ; Call BIOS interrupt

    ret
clear ENDP

getchar PROC

    mov ah, 01h    ; Function to read a character from standard input
    int 21h        ; Call DOS interrupt to read the character

    ret
getchar ENDP



movCursor PROC

    mov bh, 0       ; Page number (usually 0 for text mode)
    mov ah, 02h     ; Set cursor position function
    mov dh, Cursor_row      ; Row (e.g., 10)
    mov dl, Cursor_col      ; Column (e.g., 20)
    int 10h         ; Call BIOS interrupt

    ret
movCursor ENDP


printNum PROC

    mov cx, 0
    con:
    
    mov dx,0
    mov bx, 10
    div bx

    push dx
    inc cx

    cmp ax,0
    jne con



    printNumLoop:
        mov dx,0
        pop ax
        mov dl,al
        add dl,30h
        mov ah,02h
        int 21h
    loop printNumLoop

    ret
printNum ENDP

printStr PROC

    mov ah, 09h     ; Print string function
    
    ;mov dx, offset   ; Load offset of the message
    
    int 21h         ; Call DOS interrupt

    ret
printStr ENDP


printScore PROC

    mov Cursor_row, 24
    mov Cursor_col, 15
    call movCursor

    mov dx, offset scorestr
    call printStr
    
    mov ax,score
    
    call printNum

    ret
printScore ENDP


printLife PROC
    
    mov Cursor_row, 24
    mov Cursor_col, 32
    call movCursor

    mov dx, offset lifestr
    call printStr

    mov ax, 0
    mov al, life

    call printNum

    ret
printLife ENDP

printLevel PROC

    mov Cursor_row, 0
    mov Cursor_col, 0
    call movCursor

    mov dx, offset levelstr
    call printStr

    mov ax, 0
    mov al, level

    call printNum

    ret
printLevel ENDP



printBullets PROC

    mov Cursor_row, 0
    mov Cursor_col, 29
    call movCursor

    mov dx, offset emptyStr
    call printStr

    mov Cursor_row, 0
    mov Cursor_col, 29
    call movCursor

    mov dx, offset bulletstr
    call printStr

    mov ax, bullets
    
    call printNum

    ret
printBullets ENDP

shoot PROC

    dec bullets

    call shootSound

    push ax
    push bx

    ;;----------------------------------;;
    ;;-------- COMPARE 1st DUCK --------;;
    ;;----------------------------------;;

    mov al, aim_row
    mov ah, aim_col

    mov bl, d_row
    mov bh, d_col

    cmp al,bl
    
    jne colission1d1
    
        cmp ah,bh
        jne colission2d1

            call duckHitSound
            inc score
            call resetDuck
            dec ducks

        colission2d1:

    colission1d1:


    ;;----------------------------------;;
    ;;-------- COMPARE 2nd DUCK --------;;
    ;;----------------------------------;;


    cmp level, 2
    jne dontShoot2Ducks

        mov al, aim_row
        mov ah, aim_col

        mov bl, d2_row
        mov bh, d2_col

        cmp al,bl
        
        jne colission1d2
        
            cmp ah,bh
            jne colission2d2

                call duckHitSound
                inc score
                call resetDuck2
                dec ducks

            colission2d2:

        colission1d2:

    dontShoot2Ducks:


    ;;----------------------------------;;
    ;;-------- COMPARE 3rd DUCK --------;;
    ;;----------------------------------;;


    cmp level, 3
    jne dontShoot3Ducks

        mov al, aim_row
        mov ah, aim_col

        mov bl, d3_row
        mov bh, d3_col

        cmp al,bl
        
        jne colission1d3
        
            cmp ah,bh
            jne colission2d3

                call duckHitSound
                inc score
                call resetDuck3
                dec ducks

            colission2d3:

        colission1d3:

    dontShoot3Ducks:


    pop bx
    pop ax

    ret
shoot ENDP


setAim PROC

    push ax
    mov al, aim_row
    mov Cursor_row, al
    mov al, aim_col
    mov Cursor_col, al
    pop ax

    call movCursor
    
    mov dl,'X'
    mov ah,02h
    int 21h

    ret
setAim ENDP

updateAim PROC

    push ax

    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, aim_row     ;top row of window
    mov cl, aim_col     ;left most column of window
    mov dh, aim_row     ;Bottom row of window
    mov dl, aim_col     ;Right most column of window
    int 10h


    pop ax

    cmp al, 48h
    je movUp

    cmp al, 50h
    je movDown

    cmp al, 4Bh
    je movLeft

    cmp al, 4Dh
    je movRight

    jmp finishAimUpdate

    movUp:
        cmp aim_row, 0
        je finishAimUpdate
        dec aim_row
    jmp finishAimUpdate

    movDown:
        cmp aim_row, 16
        je finishAimUpdate
        inc aim_row
    jmp finishAimUpdate

    movLeft:
        cmp aim_col, 0
        je finishAimUpdate
        dec aim_col
    jmp finishAimUpdate

    movRight:
        cmp aim_col, 39
        je finishAimUpdate
        inc aim_col
    jmp finishAimUpdate

    
    finishAimUpdate:

    ret
updateAim ENDP


;;-----------------------------------;;
;;            set duck 1             ;;
;;-----------------------------------;;


resetDuck Proc

    ;;----

    push ax

    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, d_row     ;top row of window
    mov cl, d_col     ;left most column of window
    mov dh, d_row     ;Bottom row of window
    mov dl, d_col     ;Right most column of window
    int 10h

    pop ax

    ;;----


    call random

    inc dx
    inc dx

    mov ax, dx
    ; mov ax,3
    ; mul dx


    mov d_row, al
    mov d_col, 0


    ret
resetDuck ENDP

setDuck Proc

    ;;reset if end
    push ax
    mov al, d_col 
    cmp al,39
    
    jl skip
    dec life
    dec ducks
    call resetDuck
    skip:
    
    pop ax
    ;;reset if end


    ;;----

    push ax

    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, d_row     ;top row of window
    mov cl, d_col     ;left most column of window
    mov dh, d_row     ;Bottom row of window
    mov dl, d_col     ;Right most column of window
    int 10h

    pop ax

    ;;----


    ;;
    inc d_col
    ;;







    push bx
    push ax

    mov al, d_row
    mov Cursor_row, al
    mov al, d_col
    mov Cursor_col, al

    

    pop ax
    pop bx

    call movCursor
    
    mov dl,'D'
    mov ah,02h
    int 21h

    
    ret
setDuck ENDP


;;-----------------------------------;;
;;            set duck 2             ;;
;;-----------------------------------;;


resetDuck2 Proc

    ;;----

    push ax

    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, d2_row     ;top row of window
    mov cl, d2_col     ;left most column of window
    mov dh, d2_row     ;Bottom row of window
    mov dl, d2_col     ;Right most column of window
    int 10h

    pop ax

    ;;----


    call random

    inc dx
    inc dx

    mov ax, dx
    ; mov ax,3
    ; mul dx


    mov d2_row, al
    mov d2_col, 0


    ret
resetDuck2 ENDP

setDuck2 Proc

    ;;reset if end
    push ax
    mov al, d2_col 
    cmp al,39
    
    jl skip2
    dec life
    dec ducks
    call resetDuck2
    skip2:
    
    pop ax
    ;;reset if end


    ;;----

    push ax

    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, d2_row     ;top row of window
    mov cl, d2_col     ;left most column of window
    mov dh, d2_row     ;Bottom row of window
    mov dl, d2_col     ;Right most column of window
    int 10h

    pop ax

    ;;----


    ;;
    inc d2_col
    ;;







    push bx
    push ax

    mov al, d2_row
    mov Cursor_row, al
    mov al, d2_col
    mov Cursor_col, al

    

    pop ax
    pop bx

    call movCursor
    
    mov dl,'D'
    mov ah,02h
    int 21h

    
    ret
setDuck2 ENDP


;;-----------------------------------;;
;;            set duck 3             ;;
;;-----------------------------------;;


resetDuck3 Proc

    ;;----

    push ax

    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, d3_row     ;top row of window
    mov cl, d3_col     ;left most column of window
    mov dh, d3_row     ;Bottom row of window
    mov dl, d3_col     ;Right most column of window
    int 10h

    pop ax

    ;;----


    call random

    inc dx
    inc dx

    mov ax, dx
    ; mov ax,3
    ; mul dx


    mov d3_row, al
    mov d3_col, 0


    ret
resetDuck3 ENDP

setDuck3 Proc

    ;;reset if end
    push ax
    mov al, d3_col 
    cmp al,39
    
    jl skip3
    dec life
    dec ducks
    call resetDuck3
    skip3:
    
    pop ax
    ;;reset if end


    ;;----

    push ax

    mov ah, 6
    mov al, 0
    mov bh, 1     ;color
    mov ch, d3_row     ;top row of window
    mov cl, d3_col     ;left most column of window
    mov dh, d3_row     ;Bottom row of window
    mov dl, d3_col     ;Right most column of window
    int 10h

    pop ax

    ;;----


    ;;
    inc d3_col
    ;;







    push bx
    push ax

    mov al, d3_row
    mov Cursor_row, al
    mov al, d3_col
    mov Cursor_col, al

    

    pop ax
    pop bx

    call movCursor
    
    mov dl,'D'
    mov ah,02h
    int 21h

    
    ret
setDuck3 ENDP


instructions PROC

    call clear


    mov ah, 0      ;video mode
    mov al, 12      ; 80x25 (text mode)  
    int 10h
 
    MOV AH, 06h    ; Scroll up function
    XOR AL, AL     ; Clear entire screen
    XOR CX, CX     ; Upper left corner CH=row, CL=column
    MOV DX, 184FH  ; lower right corner DH=row, DL=column 
    MOV BH, 01100100b    ; RedOnBrown
    INT 10H



    mov Cursor_row, 3
    mov Cursor_col, 5
    call movCursor
    mov dx, offset i1
    call printStr


    mov Cursor_row, 4
    mov Cursor_col, 5
    call movCursor
    mov dx, offset i2
    call printStr

    
    mov Cursor_row, 5
    mov Cursor_col, 5
    call movCursor
    mov dx, offset i3
    call printStr

    
    mov Cursor_row, 6
    mov Cursor_col, 5
    call movCursor
    mov dx, offset i4
    call printStr


    mov Cursor_row, 7
    mov Cursor_col, 5
    call movCursor
    mov dx, offset i5
    call printStr


    mov Cursor_row, 8
    mov Cursor_col, 5
    call movCursor
    mov dx, offset i6
    call printStr


    call getchar
    call beep





    mov Cursor_row, 10
    mov Cursor_col, 5
    call movCursor
    mov dx, offset instruction1
    call printStr

    mov Cursor_row, 12
    mov Cursor_col, 5
    call movCursor
    mov dx, offset instruction2
    call printStr

    mov Cursor_row, 14
    mov Cursor_col, 5
    call movCursor
    mov dx, offset instruction3
    call printStr




    call getchar

    ret
instructions ENDP

options PROC


    mov ah, 0      ;video mode
    mov al, 12      ; 80x25 (text mode)  
    int 10h
 
    MOV AH, 06h    ; Scroll up function
    XOR AL, AL     ; Clear entire screen
    XOR CX, CX     ; Upper left corner CH=row, CL=column
    MOV DX, 184FH  ; lower right corner DH=row, DL=column 
    MOV BH, 01100100b    ; RedOnBrown
    INT 10H

    mov Cursor_row, 3
    mov Cursor_col, 20
    call movCursor
    mov dx, offset m1
    call printStr

    mov Cursor_row, 4
    mov Cursor_col, 20
    call movCursor
    mov dx, offset m2
    call printStr

    mov Cursor_row, 5
    mov Cursor_col, 20
    call movCursor
    mov dx, offset m3
    call printStr

    mov Cursor_row, 6
    mov Cursor_col, 20
    call movCursor
    mov dx, offset m4
    call printStr

    mov Cursor_row, 7
    mov Cursor_col, 20
    call movCursor
    mov dx, offset m5
    call printStr

    mov Cursor_row, 8
    mov Cursor_col, 20
    call movCursor
    mov dx, offset m6
    call printStr


    call getchar
    call beep

    mov Cursor_row, 10
    mov Cursor_col, 25
    call movCursor
    mov dx, offset option1
    call printStr


    mov Cursor_row, 12
    mov Cursor_col, 25
    call movCursor
    mov dx, offset option2
    call printStr


    again:

    call getchar

    cmp al, 49
    jl again

    cmp al, 50
    ja again


    cmp al, 49
    je outofoptions
    
    call beep
    call instructions
    

    outofoptions:
    call beep

    
    ret
options ENDP


menu PROC

    mov ah, 0      ;video mode
    mov al, 12      ; 80x25 (text mode)  
    int 10h
 
    MOV AH, 06h    ; Scroll up function
    XOR AL, AL     ; Clear entire screen
    XOR CX, CX     ; Upper left corner CH=row, CL=column
    MOV DX, 184FH  ; lower right corner DH=row, DL=column 
    MOV BH, 00000100b    ; RedOnBlack
    INT 10H

    call getchar
    call beep

    mov Cursor_row, 3
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle1
    call printStr
    

    mov Cursor_row, 4
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle2
    call printStr

    mov Cursor_row, 5
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle3
    call printStr

    mov Cursor_row, 6
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle4
    call printStr

    mov Cursor_row, 7
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle5
    call printStr

    mov Cursor_row, 8
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle6
    call printStr

    mov Cursor_row, 9
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle7
    call printStr

    mov Cursor_row, 10
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameTitle8
    call printStr


    call getchar
    call beep
    

    mov ah, 09h
    lea dx, entername
    int 21h

    mov ah, 0Ah
    lea dx, username
    int 21h

    call clear

    call options

    ret

menu ENDP


gameover PROC

    call gameOverSound
    
    call clear

    mov ah, 0      ;video mode
    mov al, 12      ; 80x25 (text mode)  
    int 10h
 
    MOV AH, 06h    ; Scroll up function
    XOR AL, AL     ; Clear entire screen
    XOR CX, CX     ; Upper left corner CH=row, CL=column
    MOV DX, 184FH  ; lower right corner DH=row, DL=column 
    MOV BH, 00000100b    ; RedOnBlack
    INT 10H

    mov Cursor_row, 3
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameover1
    call printStr
    

    mov Cursor_row, 4
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameover2
    call printStr

    mov Cursor_row, 5
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameover3
    call printStr

    mov Cursor_row, 6
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameover4
    call printStr

    mov Cursor_row, 7
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameover5
    call printStr

    mov Cursor_row, 8
    mov Cursor_col, 5
    call movCursor
    mov dx, offset gameover6
    call printStr    

    call getchar
    call beep

    mov Cursor_row, 10
    mov Cursor_col, 17
    call movCursor
    mov dx, offset scorestr
    call printStr
    mov ax, score
    call printNum

    call newline
    call newline
    call newline

    call getchar
    call beep

    call getchar
    call beep

    call getchar
    call beep

    call getchar
    call beep
    
    call getchar
    call beep

    call getchar
    call beep
    

    call clear

    ret
gameover ENDP

drawLevel1 Proc

    mov Cursor_row, 3
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level1Title1
        call printStr

        mov Cursor_row, 4
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level1Title2
        call printStr

        mov Cursor_row, 5
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level1Title3
        call printStr

        mov Cursor_row, 6
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level1Title4
        call printStr

        mov Cursor_row, 7
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level1Title5
        call printStr

        mov Cursor_row, 8
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level1Title6
        call printStr
    
    ret
drawLevel1 ENDP

drawLevel2 Proc

    mov Cursor_row, 3
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level2Title1
        call printStr        

        mov Cursor_row, 4
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level2Title2
        call printStr

        mov Cursor_row, 5
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level2Title3
        call printStr

        mov Cursor_row, 6
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level2Title4
        call printStr

        mov Cursor_row, 7
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level2Title5
        call printStr

        mov Cursor_row, 8
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level2Title6
        call printStr
    
    ret
drawLevel2 ENDP

drawLevel3 Proc

    mov Cursor_row, 3
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level3Title1
        call printStr
        

        mov Cursor_row, 4
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level3Title2
        call printStr

        mov Cursor_row, 5
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level3Title3
        call printStr

        mov Cursor_row, 6
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level3Title4
        call printStr

        mov Cursor_row, 7
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level3Title5
        call printStr

        mov Cursor_row, 8
        mov Cursor_col, 5
        call movCursor
        mov dx, offset level3Title6
        call printStr
    
    ret
drawLevel3 ENDP


shootSound Proc

    mov freq, 5000
    call sound

    ret
shootSound Endp

duckHitSound Proc

    mov freq, 2000
    call sound

    ret
duckHitSound endp

newlevelSound Proc

    mov freq, 5000
    call sound

    mov freq, 3000
    call sound

    mov freq, 1000
    call sound

    mov freq, 7000
    call sound

    mov freq, 5000
    call sound

    ret
newlevelSound Endp

gameOverSound Proc

    mov freq, 7000
    call sound

    mov freq, 5000
    call sound

    mov freq, 3000
    call sound

    mov freq, 1000
    call sound

    mov freq, 10000
    call sound

    mov freq, 15000
    call sound

    mov freq, 1500
    call sound

    mov freq, 2500
    call sound

    mov freq, 3500
    call sound

    ret
gameOverSound Endp

beep Proc

    mov freq, 2500
    call sound

ret
beep Endp

Sound proc
 
 mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, freq        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 25          ; Pause for duration of note.
pause1:
        mov     cx, 6550
pause2:
        dec     cx
        jne     pause2
        dec     bx
        jne     pause1
        in      al, 61h         ; Turn off note (get value from
                                ;  port 61h).
        and     al, 11111100b   ; Reset bits 1 and 0.
        out     61h, al         ; Send new value.
RET
Sound endp

end main
