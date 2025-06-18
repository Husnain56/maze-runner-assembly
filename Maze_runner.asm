[org 0x0100]

jmp start
maze_current: times 20*20 db 0
player_won:db 0
x: db 1
y:db 0xff
superman:db 0
back_count:db 10
Score: dw 0 ; score at the begining of the game
tickcount: dw 0
count: dw 60
lives: dw 3
randNum: dw 0
pacman_bar: dw 0
timer_flag: dw 1

maze1: db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
       db 2,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1
       db 1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,0,1
       db 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
       db 1,0,0,0,0,11,5,0,0,0,0,0,0,0,0,0,0,1,0,1
       db 1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1
       db 1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0,1,6,1
       db 1,14,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,1
       db 1,1,1,1,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0,1
       db 1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1
       db 1,0,4,0,6,0,0,1,0,0,0,0,0,0,1,0,4,0,0,1
       db 1,0,0,1,1,0,0,1,0,0,1,1,0,0,1,1,1,1,1,1
       db 1,0,0,0,1,0,0,1,0,0,0,1,0,0,12,0,0,0,0,1
       db 1,0,1,0,1,1,1,1,1,1,0,1,0,0,0,0,0,0,0,1
       db 1,0,1,0,1,0,0,0,0,0,0,1,1,1,1,0,1,1,1,1
       db 1,0,1,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1
       db 1,0,1,7,1,0,0,1,1,1,1,1,0,0,1,1,1,1,1,1
       db 1,0,1,1,1,0,13,0,5,0,0,1,0,0,0,0,0,0,0,1
       db 1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,9
       db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

maze2: db 1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
       db 1,0,0,1,0,0,0,0,0,0,0,1,0,0,0,6,0,0,0,1
       db 1,11,0,1,0,1,1,1,0,1,0,1,1,1,1,1,1,12,0,1
       db 1,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,1,0,1
       db 1,0,0,1,1,1,0,1,6,1,1,1,1,1,1,1,0,1,0,1
       db 1,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0,1
       db 1,1,1,1,1,1,0,1,1,1,1,1,0,1,0,1,1,1,0,1
       db 1,13,0,0,0,1,0,1,0,0,0,0,0,1,5,0,0,0,0,1
       db 1,0,0,1,0,1,1,1,0,1,1,14,1,1,1,1,1,1,0,1
       db 1,0,4,1,0,1,0,0,0,1,0,0,0,0,0,0,4,1,0,1
       db 1,0,0,1,0,1,0,1,1,1,0,1,0,1,1,1,1,1,0,1
       db 1,0,0,1,0,0,0,1,11,0,0,1,0,1,0,0,0,0,0,1
       db 1,0,0,1,1,1,1,1,1,1,1,1,4,1,0,1,1,1,1,1
       db 1,13,0,0,0,1,0,1,6,0,0,0,0,1,0,1,0,0,0,1
       db 1,0,0,1,0,1,0,1,0,1,1,1,1,1,0,1,0,1,0,1
       db 1,0,0,1,0,1,0,1,0,0,0,1,0,0,0,1,0,1,0,1
       db 1,0,0,1,5,1,0,1,0,1,0,1,0,1,1,1,1,1,0,1
       db 1,0,0,1,0,12,0,1,0,1,0,14,0,0,0,0,0,0,0,1
       db 1,0,7,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,9
       db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
 
maze3: db 1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
       db 1,0,1,4,0,0,0,0,0,0,0,0,0,0,11,0,0,0,6,1
       db 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
       db 1,0,1,0,1,1,1,0,1,12,1,1,0,1,1,1,1,1,1,1
       db 1,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1
       db 1,0,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1
       db 1,0,1,13,0,0,1,0,0,5,0,0,0,0,0,0,1,0,0,1
       db 1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,0,0,1
       db 1,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,1
       db 1,1,1,0,1,0,1,1,1,1,1,0,1,0,1,0,1,0,0,1
       db 1,4,0,0,1,0,1,0,0,0,1,0,1,0,0,0,1,0,0,1
       db 1,1,14,0,1,0,1,0,1,0,1,0,1,0,12,0,1,0,0,1
       db 1,0,0,5,1,0,6,0,1,0,1,0,1,0,0,0,1,14,4,1
       db 1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1
       db 1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,1
       db 1,1,1,1,1,0,1,0,1,0,11,0,1,1,1,1,1,13,0,1
       db 1,0,0,7,1,0,1,0,1,4,0,0,1,0,0,0,1,0,0,1
       db 1,0,1,1,1,0,1,0,1,1,1,1,1,0,1,0,1,0,0,1
       db 1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0,0,9
       db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

maze4: db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
       db 2,0,11,1,0,0,0,0,0,1,0,0,0,5,0,1,6,0,0,1
       db 1,0,0,1,0,12,5,0,0,1,0,0,0,0,0,1,0,0,3,1
       db 1,0,0,1,0,1,1,1,0,1,0,1,1,1,1,1,0,1,1,1
       db 1,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,4,0,0,1
       db 1,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1
       db 1,0,0,0,0,0,13,1,0,14,0,0,0,0,0,0,0,0,0,1
       db 1,0,0,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,6,1
       db 1,0,0,0,4,0,0,1,0,1,0,5,0,1,0,0,0,1,0,1
       db 1,1,1,1,1,1,0,1,1,1,1,1,0,1,0,1,1,1,0,1
       db 1,12,0,0,0,1,0,1,0,0,0,0,0,1,0,0,0,1,0,1
       db 1,0,0,1,0,1,0,1,0,1,1,1,1,1,4,1,0,13,0,1
       db 1,0,0,1,7,1,0,1,0,0,0,0,0,1,0,1,0,0,0,1
       db 1,0,0,1,1,1,0,1,0,1,1,1,0,1,0,1,1,1,1,1
       db 1,0,0,0,0,1,0,1,0,1,0,1,0,1,0,0,0,0,0,1
       db 1,0,0,1,0,1,0,1,6,1,0,1,0,1,1,1,1,1,0,1
       db 1,0,0,1,0,1,0,1,0,0,0,1,0,1,0,1,0,0,0,1
       db 1,0,0,1,0,14,0,1,1,1,1,1,0,1,0,1,0,1,1,1
       db 1,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,9
       db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

maze5: db 1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
       db 14,0,0,0,0,0,0,0,0,0,0,0,1,6,0,0,0,0,0,1
       db 1,0,1,1,1,1,1,1,1,1,1,13,1,1,1,0,1,11,0,1
       db 1,0,0,0,1,7,0,0,0,0,0,0,0,0,0,0,1,0,0,1
       db 1,5,1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,0,0,1
       db 1,0,1,0,0,0,1,0,0,5,0,0,1,0,0,11,1,0,4,1
       db 1,1,1,1,1,0,1,0,1,1,1,0,1,0,1,1,1,0,0,1
       db 1,4,0,0,0,0,1,0,0,0,1,0,1,4,0,0,1,0,0,1
       db 1,0,12,1,1,1,1,1,1,0,1,0,1,1,1,0,1,0,0,1
       db 1,0,0,0,6,0,0,0,0,0,1,0,0,0,1,0,0,0,0,1
       db 1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,5,1
       db 1,0,1,0,0,0,0,5,0,0,0,0,4,0,0,0,1,12,0,1
       db 1,0,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1
       db 1,0,0,0,1,0,0,0,0,0,1,0,13,0,1,0,0,0,0,1
       db 1,1,1,1,1,0,1,1,1,1,1,6,1,0,1,1,1,14,0,1
       db 1,0,0,0,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,1
       db 1,0,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1
       db 1,0,1,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,1
       db 1,4,1,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,9
       db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

; 0
ZERO:
    db 00111100b
    db 01100110b
    db 01101110b
    db 01110110b
    db 01100110b
    db 01100110b
    db 00111100b
    db 00000000b

; 1
ONE:
    db 00011000b
    db 00111000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 01111110b
    db 00000000b

; 2
TWO:
    db 00111100b
    db 01100110b
    db 00000110b
    db 00001100b
    db 00110000b
    db 01100000b
    db 01111110b
    db 00000000b

; 3
THREE:
    db 00111100b
    db 01100110b
    db 00000110b
    db 00111100b
    db 00000110b
    db 01100110b
    db 00111100b
    db 00000000b

; 4
FOUR:
    db 00001100b
    db 00011100b
    db 00111100b
    db 01101100b
    db 01111110b
    db 00001100b
    db 00001100b
    db 00000000b

; 5
FIVE:
    db 01111110b
    db 01100000b
    db 01111100b
    db 00000110b
    db 00000110b
    db 01100110b
    db 00111100b
    db 00000000b

; 6
SIX:
    db 00111100b
    db 01100000b
    db 01111100b
    db 01100110b
    db 01100110b
    db 01100110b
    db 00111100b
    db 00000000b

; 7
SEVEN:
    db 01111110b
    db 01100110b
    db 00000110b
    db 00001100b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00000000b

; 8
EIGHT:
    db 00111100b
    db 01100110b
    db 01100110b
    db 00111100b
    db 01100110b
    db 01100110b
    db 00111100b
    db 00000000b

; 9
NINE:
    db 00111100b
    db 01100110b
    db 01100110b
    db 00111110b
    db 00000110b
    db 01100110b
    db 00111100b
    db 00000000b


COLON:
db 00000000b
db 00010000b
db 00111000b
db 00010000b
db 00000000b
db 00010000b
db 00111000b
db 00010000b
 
clear_char:
db 11111111b
db 11111111b
db 11111111b
db 11111111b
db 11111111b
db 11111111b
db 11111111b
db 11111111b
 
; Font data (only for letter M)
A:
    db 00111100b ; A
    db 01100110b
    db 01100110b
    db 01111110b
    db 01100110b
    db 01100110b
    db 01100110b
    db 00000000b

B:
    db 11111100b
    db 11000110b
    db 11000110b
    db 11111100b
    db 11000110b
    db 11000110b
    db 11111100b
    db 00000000b

C:
    db 00111100b
    db 01100110b
    db 11000000b
    db 11000000b
    db 11000000b
    db 01100110b
    db 00111100b
    db 00000000b

D:
    db 11111000b
    db 11001100b
    db 11000110b
    db 11000110b
    db 11000110b
    db 11001100b
    db 11111000b
    db 00000000b

E:
    db 11111110b
    db 11000000b
    db 11000000b
    db 11111100b
    db 11000000b
    db 11000000b
    db 11111110b
    db 00000000b

F:
    db 11111110b
    db 11000000b
    db 11000000b
    db 11111100b
    db 11000000b
    db 11000000b
    db 11000000b
    db 00000000b

G:
    db 00111100b
    db 01100110b
    db 11000000b
    db 11001110b
    db 11000110b
    db 01100110b
    db 00111110b
    db 00000000b

H:
    db 11000110b
    db 11000110b
    db 11000110b
    db 11111110b
    db 11000110b
    db 11000110b
    db 11000110b
    db 00000000b

I:
    db 00111100b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00111100b
    db 00000000b

J:
    db 00011110b
    db 00001100b
    db 00001100b
    db 00001100b
    db 11001100b
    db 11001100b
    db 01111000b
    db 00000000b

K:
    db 11000110b
    db 11001100b
    db 11011000b
    db 11110000b
    db 11011000b
    db 11001100b
    db 11000110b
    db 00000000b

L:
    db 11000000b
    db 11000000b
    db 11000000b
    db 11000000b
    db 11000000b
    db 11000000b
    db 11111110b
    db 00000000b

M:
    db 11000011b
    db 11100111b
    db 11111111b
    db 11011011b
    db 11000011b
    db 11000011b
    db 11000011b
    db 00000000b

N:
    db 11000011b
    db 11100011b
    db 11110011b
    db 11011011b
    db 11001111b
    db 11000111b
    db 11000011b
    db 00000000b

O:
    db 00111100b
    db 01100110b
    db 11000011b
    db 11000011b
    db 11000011b
    db 01100110b
    db 00111100b
    db 00000000b

P:
    db 11111100b
    db 11000110b
    db 11000110b
    db 11111100b
    db 11000000b
    db 11000000b
    db 11000000b
    db 00000000b

Q:
    db 00111100b
    db 01100110b
    db 11000011b
    db 11000011b
    db 11001011b
    db 01100110b
    db 00111110b
    db 00000000b

R:
    db 11111100b
    db 11000110b
    db 11000110b
    db 11111100b
    db 11011000b
    db 11001100b
    db 11000110b
    db 00000000b

S:
    db 00111100b
    db 01100110b
    db 01100000b
    db 00111100b
    db 00000110b
    db 01100110b
    db 00111100b
    db 00000000b

T:
    db 11111111b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00000000b

U:
    db 11000011b
    db 11000011b
    db 11000011b
    db 11000011b
    db 11000011b
    db 11000011b
    db 01111110b
    db 00000000b

V:
    db 11000011b
    db 11000011b
    db 11000011b
    db 11000011b
    db 01100110b
    db 00111100b
    db 00011000b
    db 00000000b

W:
    db 11000011b
    db 11000011b
    db 11000011b
    db 11000011b
    db 11011011b
    db 11111111b
    db 01100110b
    db 00000000b

X:
    db 11000011b
    db 01100110b
    db 00111100b
    db 00011000b
    db 00111100b
    db 01100110b
    db 11000011b
    db 00000000b

Y:
    db 11000110b
    db 01100110b
    db 00111100b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00011000b
    db 00000000b

Z:
    db 11111111b
    db 00000110b
    db 00001100b
    db 00011000b
    db 00110000b
    db 01100000b
    db 11111111b
    db 00000000b


GenRandNum:
push bp
mov bp,sp;
pusha

MOV AH, 00h ; interrupts to get system time
INT 1AH ; CX:DX now hold number of clock ticks since midnight
mov ax, dx
shl byte [y],1


add byte ah,[y]
sub byte  al,[x]

xor dx, dx
mov cx, 5;
div cx ; here dx contains the remainder of the division


mov word[randNum],dx;


popa
pop bp
ret

clrscr:
pusha  


xor di, di ; Start at beginning
mov cx, 32000 ; Half of 64000 (word mode)
mov ax, 0x00 ; Color
rep stosw

popa    
ret

clrscr_menu:
pusha  


xor di, di ; Start at beginning
mov cx, 64000 ; Half of 64000 (word mode)
mov ax, 179 ; Color
rep stosb

popa    
ret


pacman:
push bp
mov bp,sp
pusha
push es
push ds

mov ax,0xa000
mov es,ax
mov di,[bp+6]


 cmp byte [superman],1
 jne not_s
 mov al,0x04
 jmp cp
 not_s:

mov al,[bp+4]
cp:
add di,320
mov cx,3
add di,3
rep stosb
add di,314
mov cx,5
add di,2
rep stosb
add di,313
add di,3
mov cx,5
rep stosb
add di,312
add di,4
mov cx,4
rep stosb
add di,312
mov cx,5
add di,3
rep stosb
add di,312
mov cx,5
add di,2
rep stosb
add di,313
mov cx,3
add di,3
rep stosb
add di,314
add di,320

mov cx,[pacman_bar]
cmp cx,0
je rettt
; to create a line
mov al,00h
mov cx,10
rep stosb

rettt:
pop ds
pop es
popa
pop bp

ret 4

drawsword:
    push bp
    mov bp,sp
    pusha
    mov di,[bp+4]
    add di,2880

    mov al,0x0E ;yellow
    mov bl,0x03 ;cyan 

    mov byte[es:di],al
    sub di,319
    mov byte[es:di],al
    sub di,319
    mov byte[es:di],bl
    
    mov si,di

    add di,1
    mov byte[es:di],al

    add di,1
    mov byte[es:di],al

    add di,320
    mov byte[es:di],al

    mov di,si

    sub di,320
    mov byte[es:di],al
    sub di,320
    mov byte[es:di],al

    sub di,1
    mov byte[es:di],al
    
    add di,1
    sub di,319
    mov byte[es:di],al

     sub di,319
    mov byte[es:di],al

     sub di,319
    mov byte[es:di],al

     sub di,319
    mov byte[es:di],al
    
    mov cx,di

    mov di,si
    add di,2
    
     sub di,319
    mov byte[es:di],al

     sub di,319
    mov byte[es:di],al

     sub di,319
    mov byte[es:di],al

     sub di,319
    mov byte[es:di],al
    
    mov di,cx
    add di,1
    mov byte[es:di],al

    add di,1
    mov byte[es:di],al

    add di,320
    mov byte[es:di],al
    
    mov di,si
    sub di,319 ;fill inner
    mov byte[es:di],bl

    add di,1
    mov byte[es:di],bl

    sub di,321
    mov byte[es:di],bl
    
    add di,1
    mov byte[es:di],bl
    
    sub di,319
    mov byte[es:di],bl

    sub di,1
    mov byte[es:di],bl

    add di,321
    mov byte[es:di],bl

    sub di,319
    mov byte[es:di],bl
    
    sub di,320
    mov byte[es:di],bl

    sub di,1
    mov byte[es:di],bl

    add di,2
    mov byte[es:di],bl

    sub di,320
    mov byte[es:di],bl

    sub di,1
    mov byte[es:di],bl

    popa
    pop bp
    ret 2

draw_orange:
push bp
mov bp,sp
pusha
mov di,[bp+4]

mov al,45
add di,3
mov cx,4
rep stosb
add di,313

add di,3
mov cx,2
rep stosb
add di,315

mov al,42
add di,2
mov cx,5
rep stosb
add di,313

add di,1
mov cx,7
rep stosb
add di,312

mov cx,9
rep stosb 
add di,311

mov cx,9
rep stosb
add di,311

mov cx,9
rep stosb
add di,311


add di,1
mov cx,7
rep stosb
add di,312

add di,2
mov cx,5
rep stosb
add di,313

add di,3
mov cx,3
rep stosb

mov al,65

mov di,[bp+4]
add di,1280
add di,2
mov [es:di],al
inc di
mov [es:di],al
add di,319


mov [es:di],al
add di,1
mov [es:di],al
add di,319
mov [es:di],al
add di,1
mov [es:di],al
add di,320

popa
pop bp
ret 2


draw_strawbery:
push bp
mov bp,sp
pusha


mov di,[bp+4]
inc di
mov al,3
add di,4
mov cx,1
add di,315

add di,2
mov cx,5
rep stosb
add di,313

mov al,12

add di,1
mov cx,7
rep stosb
add di,312

mov cx,9
rep stosb
add di,311

add di,1
mov cx,7
rep stosb 
add di,312

add di,2
mov cx,5
rep stosb
add di,313


add di,3 
mov cx,3
rep stosb
add di,314

add di,4 
mov cx,1
rep stosb
add di,315

mov al, 15

mov di,[bp+4]
add di,960
add di,6
mov [es:di],al
add di,3

add di,311
add di,1 
mov [es:di],al
add di,9

add di,310
add di,2
mov [es:di],al
inc di
mov [es:di],al
add di,6

add di,310
add di,5
mov [es:di],al
add di,3

popa
pop bp
ret 2

draw_apple:
push bp
mov bp,sp
pusha
mov di,[bp+4]

mov al,3
add di,3
mov cx,4
rep stosb
add di,313

add di,3
mov cx,2
rep stosb
add di,315

mov al,12
add di,2
mov cx,5
rep stosb
add di,313

add di,1
mov cx,7
rep stosb
add di,312

mov cx,9
rep stosb 
add di,311

mov cx,9
rep stosb
add di,311

mov cx,9
rep stosb
add di,311

add di,1
mov cx,2
rep stosb
add di,2
mov cx,2
rep stosb
add di,313

add di,1
mov cx,2
rep stosb
add di,2
mov cx,2
rep stosb
add di,313

mov al,15

mov di,[bp+4]
add di,1280
add di,2
mov [es:di],al
inc di
mov [es:di],al
add di,319


mov [es:di],al
add di,1
mov [es:di],al
add di,319
mov [es:di],al
add di,1
mov [es:di],al
add di,320

popa
pop bp
ret 2

draw_finish_flag:
    
    push bp
    mov bp,sp
    pusha

    mov di,[bp+4]
    
    mov bl,0x0F ;White
    mov al,0x08 ;gray
 
    add di,321
    mov si,di
    mov cx,0
    l1:

    mov byte[es:di],al
    add di,320
    inc cx
    cmp cx,8
    jb l1
    
    mov di,si
    add di,2
    
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl

    add di,315
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al

    add di,315
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl

    add di,315
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al
    add di,1
    mov byte[es:di],bl
    add di,1
    mov byte[es:di],al

    popa
    pop bp
    ret 2

draw_enemy:
     
push bp
mov bp,sp
push di
push cx
push ax
push bx
push dx
push si

     mov di,[bp+6]
     add di,4
     mov si,di

     mov bl,0x0F ;white for eyes
     mov al,[bp+4] ;red for body
     mov cl,0x01 ;blue for eyes

     mov byte[es:di],al
     
     add di,1
     mov byte[es:di],al
     
     add di,321
     mov byte[es:di],al
     
     add di,320
     mov byte[es:di],bl
     
     add di,1
     mov byte[es:di],bl
     
     add di,319
     mov byte[es:di],cl

     add di,1
     mov byte[es:di],bl

     add di,1
     mov byte[es:di],bl

     add di,320
     mov byte[es:di],bl

     sub di,1
     mov byte[es:di],bl

     sub di,1
     mov byte[es:di],cl

     add di,321
     mov byte[es:di],bl
     
     add di,1
     mov byte[es:di],al

     sub di,2
     mov byte[es:di],al

     add di,320
     mov byte[es:di],al

     add di,1
     mov byte[es:di],al

     add di,1
     mov byte[es:di],al

     add di,319
     mov byte[es:di],al

     add di,1
     mov byte[es:di],al

     add di,319
     mov byte[es:di],al

     add di,1
     mov byte[es:di],al

     mov di,si
     add di,320
     mov byte[es:di],al
   
     mov si,di

     add di,1
     mov byte[es:di],al
     
     add di,320
     mov byte[es:di],al

     add di,320
     mov byte[es:di],al

     add di,320
     mov byte[es:di],al

     add di,320
     mov byte[es:di],al

     add di,320
     mov byte[es:di],al

     add di,320
     mov byte[es:di],al

     add di,320
     mov byte[es:di],al
     
     mov di,si
     sub di,1
     mov byte[es:di],al

     add di,321
     mov byte[es:di],al

     sub di,1
     mov byte[es:di],bl
 
     sub di,1
     mov byte[es:di],bl

     add di,320
     mov byte[es:di],cl

     add di,1
     mov byte[es:di],bl

     add di,1
     mov byte[es:di],bl

     add di,317
     mov byte[es:di],al

     add di,1
     mov byte[es:di],cl

     add di,1
     mov byte[es:di],bl

     add di,1
     mov byte[es:di],bl

     add di,317
     mov byte[es:di],al

     add di,1
     mov byte[es:di],al

     add di,1
     mov byte[es:di],bl

     add di,1
     mov byte[es:di],al

     add di,317
     mov byte[es:di],al
     
     add di,1
     mov byte[es:di],al

     add di,1
     mov byte[es:di],al

     add di,1
     mov byte[es:di],al

     add di,317
     mov byte[es:di],al

     add di,2
     mov byte[es:di],al

     add di,318
     mov byte[es:di],al

     add di,2
     mov byte[es:di],al

pop si
pop dx
pop bx
pop ax
pop cx
pop di
pop bp
ret 4
 

space:
push bp
mov bp,sp
push di
push cx
push ax
push bx
push dx
push si


mov di, [bp+8]
mov dx, [bp+6] ; Height counter

space_loop:
push di ; Save position
mov cx, [bp+4] ; Width counter
mov al, 0x00 ; Color
rep stosb ; Draw horizontal line
pop di ; Restore position
add di, 320 ; Move down one line
dec dx
jnz space_loop

pop si
pop dx
pop bx
pop ax
pop cx
pop di
pop bp
ret 6

Wall:
push bp
mov bp,sp
push di
push cx
push ax
push bx
push dx
push si

mov al, [bp+10] ; Color

mov di, [bp+8]
mov dx, [bp+6] ; Height counter

rect_loop:
push di ; Save position
mov cx, [bp+4] ; Width counter
rep stosb ; Draw horizontal line
pop di ; Restore position
add di, 320 ; Move down one line
dec dx
jnz rect_loop

pop si
pop dx
pop bx
pop ax
pop cx
pop di
pop bp
ret 8



display_score:
push bp
mov bp,sp
pusha

mov ax,[Score]
mov cx,0
mov bx,10

next_digit:
mov dx,0
div bx
push dx
inc cx
cmp ax,0
jne next_digit

mov ax,cx
mov cx,[bp+4]
mov bl,14


digits_in_correct_order:
POP DX

cmp dx,0
jne not_zero
mov dx,[bp+6]
mov bl,0x00
mov si,clear_char
call plot_char
mov bl,14
mov si,ZERO
call plot_char
jmp traverse_this_loop
not_zero:

cmp dx,1
jne not_one
mov dx,[bp+6]
mov bl,0
mov si,clear_char

call plot_char
mov si,ONE
mov bl,14
call plot_char
jmp traverse_this_loop
not_one:

cmp dx,2
jne not_two
mov dx,[bp+6]
mov bl,0
mov si,clear_char
call plot_char
mov bl,14
mov si,TWO
call plot_char
jmp traverse_this_loop
not_two:

cmp dx,3
jne not_three
mov dx,[bp+6]
mov bl,0
mov si,clear_char
call plot_char
mov bl,14
mov si,THREE
call plot_char
jmp traverse_this_loop
not_three:

cmp dx,4
jne not_four
mov dx,[bp+6]
mov bl,0
mov si,clear_char
call plot_char
mov bl,14
mov si,FOUR
call plot_char
jmp traverse_this_loop
not_four:

cmp dx,5
jne not_five
mov dx,[bp+6]
mov si,clear_char
mov bl,0
call plot_char
mov si,FIVE
mov bl,14
call plot_char
jmp traverse_this_loop
not_five:

cmp dx,6
jne not_six
mov dx,[bp+6]
mov si,clear_char
mov bl,0
call plot_char
mov si,SIX
mov bl,14
call plot_char
jmp traverse_this_loop
not_six:
cmp dx,7
jne not_seven
mov dx,[bp+6]
mov si,clear_char
mov bl,0
call plot_char
mov si,SEVEN
mov bl,14
call plot_char


jmp traverse_this_loop


not_seven:
cmp dx,8
jne not_eight
mov dx,[bp+6]
mov si,clear_char
mov bl,0
call plot_char
mov si,EIGHT
mov bl,14
call plot_char
jmp traverse_this_loop


not_eight:
cmp dx,9
jne traverse_this_loop
mov dx,[bp+6]
mov si,clear_char
mov bl,0
call plot_char
mov si,NINE
mov bl,14
call plot_char

traverse_this_loop:
add cx,8
dec ax
cmp ax,0
jne digits_in_correct_order

popa
pop bp
ret 4


gen_maze:

push bp
mov bp,sp
sub sp,2
push di
push cx
push ax
push bx
push dx
push si

mov bx,[bp+4]
mov si,0  
mov di,0
mov ax,0
mov cx,3200
mov word[bp-2],cx
mov cx,0

outer_loop:
    cmp cx,19
    jg return
    mov dx,0

inner_loop:
    mov al,[bx+si]
    cmp al,0
    je g_space
    cmp al,9
    je draw_character
    cmp al,11
    je draw_enemies_red
    cmp al,12
    je draw_enemies_cyan
    cmp al,13
    je draw_enemies_pink
    cmp al,14
    je draw_enemies_orange
    cmp al,2
    je draw_ending_point
    cmp al,4
    je draw_or
    cmp al,5
    je draw_app
    cmp al,6
    je draw_straw
    cmp al,7
    je draw_sword

g_wall:
    push 0x09
    push di
    push 9
    push 9
    call Wall
    jmp compare

g_space:
    push di
    push 9
    push 9
    call space
    jmp compare

draw_character:   
    push di
    push 0X0E
    call pacman
    jmp compare
;75 is the color for blue
;4 for red
;42 for orange
;85 for pink
draw_enemies_red:
    push di
    push 0x04

    call draw_enemy
    jmp compare
draw_enemies_cyan:
    push di
    push 0x03

    call draw_enemy
    jmp compare
draw_enemies_orange:
    push di
    push 42

    call draw_enemy
    jmp compare
draw_enemies_pink:
    push di
    push 85

    call draw_enemy
    jmp compare

draw_ending_point:
    push di
    call draw_finish_flag
    jmp compare

draw_straw:
    push di
    call draw_strawbery
 jmp compare

draw_or:
push di
call draw_orange
jmp compare

draw_app:
push di
call draw_apple
jmp compare

draw_sword:
push di
call drawsword
jmp compare

compare:
    inc dx
    inc si
    cmp dx,19
    jg next_line
    add di,10
    jmp inner_loop

next_line:
    mov di,[bp-2]
    mov dx,di
    add dx,3200
    mov word[bp-2],dx
    inc cx
    jmp outer_loop

return:
pop si
pop dx
pop bx
pop cx
pop ax
pop di
mov sp,bp
pop bp
ret 2


score_check:
push bp
mov bp,sp
pusha
;Let apple has 15 orange has 10 and strwberry has 5 score
cmp cl,11
je kb_loop
cmp cl,12
je kb_loop
cmp cl,13
je kb_loop
cmp cl,14
je kb_loop

cmp cl,4
jne not_strawberry
add word [Score],5
push word 10
push word 280
call display_score
jmp exit_score
not_strawberry:
cmp cl,5
jne not_orange
add word [Score],10
push word 10
push word 280
call display_score
jmp exit_score
not_orange:
cmp cl,6
jne exit_score
add word [Score],15
push word 10
push word 280
call display_score
exit_score:
popa
pop bp

ret


decrement_lives:
     
     push di
     push cx
push es
push ds
     dec word[lives]
     mov cx,[lives]
          cmp word [lives],0
	 jne dec_ultimate
	 mov byte [player_won],2
	 mov word [bx+si],0
	 mov word [bx+379],9
	 call game_over
dec_ultimate:
     cmp cx,2
     je dec_3
     
     cmp cx,1
     je dec_2

     cmp cx,0
     je dec_1
     
     jmp return_lives

     dec_3:
     mov di,16288
     push di
     push 9
     push 9
     call space
     jmp return_lives

     dec_2:
     mov di,16280
     push di
     push 9
     push 9
     call space
      jmp return_lives

     dec_1:
     mov di,16272
     push di
     push 9
     push 9
     call space
     jmp return_lives

     return_lives:
    pop ds
    pop es 
    pop cx
    pop di
    ret

play_game:
    push bp
    mov bp,sp
    push ax
    push bx
    push cx
    push dx
    push si
    push di
   
    ;57790
    mov di,57790 ;location of the main character
    mov bx,[bp+4] ;point bp to maze
   
    mov si,379  

    kb_loop:
        mov ah,00h
        int 16h
       
        cmp ah,0x11
        je move_up
       
        cmp ah,0X1F
        je move_down

        cmp ah,0x1E
        je move_left

        cmp ah,0x20
        je move_right

        cmp ah,0x01
        je exit
       
        jmp kb_loop

move_up:
       
        mov cl,[bx+si-20]
        cmp cl,1
        je kb_loop

;Let apple has 15 orange has 5 and strwberry has 10 score
        cmp cl,11
        je super_man_check1
        cmp cl,12
        je super_man_check1
        cmp cl,13
        je super_man_check1
        cmp cl,14
        je super_man_check1
        jmp cont

        super_man_check1:
        cmp byte [superman],0
	    je nspu
	    mov byte [superman],0
	    jmp fruit_up
	    nspu: 
           call decrement_lives
            jmp kb_loop

        cont:
		cmp cl,2
        jne not_gameover_u
        mov byte [player_won],1
        mov byte [bx+si],0
        mov byte [bx+379],9
        call game_over


not_gameover_u:
cmp cl,7
jne not_su
inc byte [superman]
jmp fruit_up
not_su:
        call score_check

        cmp cl,4
        je fruit_up
        cmp cl,5
        je fruit_up
        cmp cl,6
        je fruit_up
        jmp continue_move_up

       fruit_up:
       
        mov byte [bx+si-20],0

       continue_move_up:
        mov cl,[bx+si-20]
        xchg cl,[bx+si]


        sub si,20
        push di
        push 9
        push 9
        call space

        sub di,3200

        push di
        push 9
        push 9
        call space

        push di
        push 0X0E
        call pacman
        jmp kb_loop
       
    move_down:
       
        mov cl,[bx+si+20]
        cmp cl,1
        je kb_loop
  
       cmp cl,11
        je super_man_check2
        cmp cl,12
        je super_man_check2
        cmp cl,13
        je super_man_check2
        cmp cl,14
        je super_man_check2
        jmp cont_d

     super_man_check2:
    cmp byte [superman],0
	je nspd
	mov byte [superman],0
	jmp fruit_down
	nspd:
           call decrement_lives
            jmp kb_loop
  
cont_d:

cmp cl,2
jne not_gameover_d
mov byte [player_won],1
mov byte [bx+si],0
mov byte [bx+339],9
call game_over

not_gameover_d:
cmp cl,7
jne not_sd
mov byte [superman],1
jmp fruit_down
not_sd:

       
   call score_check


cmp cl,4
je fruit_down
cmp cl,5
je fruit_down
cmp cl,6
je fruit_down
jmp continue_move_down

fruit_down:
mov byte [bx+si+20],0



continue_move_down:    
        mov cl,[bx+si+20]
        xchg cl,[bx+si]


        add si,20

        push di
        push 9
        push 9
        call space

        add di,3200

push di
        push 9
        push 9
        call space

        push di
        push 0X0E
        call pacman
        jmp kb_loop

    move_left:
        mov cl,[bx+si-1]
        cmp cl,1
        je kb_loop
  
        cmp cl,11
        je super_man_check3
        cmp cl,12
        je super_man_check3
        cmp cl,13
        je super_man_check3
        cmp cl,14
        je super_man_check3
        jmp cont_l
        
    super_man_check3:
     cmp byte [superman],0
	je nspl
	mov byte [superman],0
	jmp fruit_left
	nspl:
 
           call decrement_lives
            jmp kb_loop

cont_l:
mov cl,[bx+si-1]

cmp cl,11
je kb_loop
cmp cl,12
je kb_loop
cmp cl,13
je kb_loop
cmp cl,14
je kb_loop

cmp cl,2
jne not_gameover_l
mov byte [player_won],1
mov byte [bx+si],0
mov byte [bx+339],9
call game_over

not_gameover_l:
cmp cl,7
jne not_sl
inc byte [superman]
jmp fruit_left
not_sl:

call score_check

cmp cl,4
je fruit_left
cmp cl,5
je fruit_left
cmp cl,6
je fruit_left
jmp continue_move_left

fruit_left:
mov byte [bx+si-1],0

continue_move_left:
        mov cl,[bx+si-1]
        xchg cl,[bx+si]


        sub si,1

        push di
        push 9
        push 9
        call space
     
        sub di,10

push di
        push 9
        push 9
        call space

        push di
        push 0X0E
        call pacman
        jmp kb_loop

    move_right:
        mov cl,[bx+si+1]
        cmp cl,1
        je kb_loop

        cmp cl,11
        je super_man_check4
        cmp cl,12
        je super_man_check4
        cmp cl,13
        je super_man_check4
        cmp cl,14
        je super_man_check4

        jmp cont_r
        super_man_check4:
    
 cmp byte [superman],0
	je nspr
	mov byte [superman],0
	jmp fruit_right
	nspr:
           call decrement_lives
            jmp kb_loop


cont_r:
mov cl,[bx+si+1]

cmp cl,11
je kb_loop
cmp cl,12
je kb_loop
cmp cl,13
je kb_loop
cmp cl,14
je kb_loop

cmp cl,2
jne not_gameover_r
mov byte [player_won],1
mov byte [bx+si],0
mov byte [bx+339],9
call game_over

not_gameover_r:
cmp cl,7
jne not_sr
inc byte [superman]
jmp fruit_right
not_sr:
call score_check


cmp cl,4
je fruit_right
cmp cl,5
je fruit_right
cmp cl,6
je fruit_right
jmp continue_move_right

fruit_right:
mov byte [bx+si+1],0

continue_move_right:
        mov cl,[bx+si+1]
        xchg cl,[bx+si]

   

        add si,1
       
        push di
        push 9
        push 9
        call space

        add di,10

push di
        push 9
        push 9
        call space

        push di
        push 0X0E
        call pacman
        jmp kb_loop
       
    exit:
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop sp
    ret 2


plot_char:
        pusha
        mov di, 8
    row_loop:
        mov al, [si]
        push cx
        mov ah, 8
   
    pixel_loop:
        test al, 10000000b
        jz skip_pixel
   
        push ax
        mov ah, 0Ch ; Function 0Ch - Write pixel
        mov al, bl ; Color
        mov bh, 0 ; Page 0
        int 10h ; Draw pixel
        pop ax
   
    skip_pixel:
        inc cx            
        shl al, 1
        dec ah
        jnz pixel_loop
   
        pop cx
        inc dx
        inc si
        dec di
        jnz row_loop
       
        popa
        ret


load_si:
  push bp
  mov bp,sp
    push ax
    mov ax,[bp+4]
    
    cmp ax,'0'
    je load0
    
    cmp ax,'1'
    je load1

    cmp ax,'2'
    je load2

    cmp ax,'3'
    je load3

    cmp ax,'4'
    je load4

    cmp ax,'5'
    je load5

    cmp ax,'6'
    je load6

    cmp ax,'7'
    je load7

    cmp ax,'8'
    je load8

    cmp ax,'9'
    je load9
    
    load0:
        mov si,ZERO
        jmp rett
    load1:
      mov si,ONE
      jmp rett
    load2:
      mov si,TWO
      jmp rett
    load3:
      mov si,THREE
      jmp rett
    load4:
      mov si,FOUR
      jmp rett
    load5:
      mov si,FIVE
      jmp rett
    load6:
      mov si,SIX
      jmp rett
    load7:
      mov si,SEVEN
      jmp rett
    load8:
      mov si,EIGHT
      jmp rett
    load9:
      mov si,NINE
      jmp rett

rett:
    pop ax
    pop bp
    ret 2




printnum: 

 push bp
 mov bp, sp
 push ax
 push bx
 push cx
 push dx
 push di
 push si
 
 mov ax, [bp+4] ; load number in ax
 mov bx, 10 ; use base 10 for division
 mov cx, 260 ; initialize count of digits
 mov cx,0

nextdigit: 

 xor dx,dx; zero upper half of dividend
 div bx ; divide by 10
 add dx, 0x30 ; convert digit into ascii value
 push dx ; save ascii value on stack
 inc cx ; increment count of values
 cmp ax, 0 ; is the quotient zero
 jnz nextdigit ; if no divide it again

   mov ax,cx
   mov cx,270
nextpos:
 
    pop dx ; remove a digit from the stack
    push dx
    add cx,8
    mov dx, 30 ; Y position
 mov si,clear_char
 mov bl,00
 call plot_char
    mov bl, 14 ; Color
    
    call load_si
    call plot_char
    
 dec ax
 cmp ax,0
 jne nextpos ; repeat for all digits on stack

 pop si
 pop di
 pop dx
 pop cx
 pop bx
 pop ax 
 pop bp
 ret 2



timer:
 
 pusha

  mov cx,[timer_flag]
  cmp cx,0
  je return1

inc byte [cs:x]
sub byte [y],2
cmp byte [player_won],0
jne return1
 inc word [cs:tickcount]; increment tick count

 mov cx,18
 cmp cx,[cs:tickcount]
 je print
 jmp return1

 print:
 push word [cs:count]
 call printnum ; print tick count
 
 dec word[cs:count]
 
 mov cx,0
 mov word[cs:tickcount],0
cmp word [cs:count],0
jne return1
mov byte [player_won],2
call game_over
 return1:
 
 mov al, 0x20
 out 0x20, al ; end of interrupt
 popa
 iret ; return from interrupt
 
 
maze_copy:
push bp
mov bp,sp
pusha
push es
push ds

mov si,[bp+4]
mov di,maze_current
push ds
pop es

mov cx,400

rep movsb


pop ds
pop es
popa
pop bp
ret 2


game_over:
push bp
mov bp,sp
pusha

call clrscr

mov cx,130
mov dx,60
mov bl,14
mov si,G
call plot_char

mov cx,138
mov dx,60
mov bl,14
mov si,A
call plot_char

mov cx,146
mov dx,60
mov bl,14
mov si,M
call plot_char

mov cx,154
mov dx,60
mov bl,14
mov si,E
call plot_char

mov cx,162
mov dx,60
mov bl,00
mov si,clear_char
call plot_char



mov cx,170
mov dx,60
mov bl,14
mov si,O
call plot_char

mov cx,178
mov dx,60
mov bl,14
mov si,V
call plot_char

mov cx,186
mov dx,60
mov bl,14
mov si,E
call plot_char

mov cx,194
mov dx,60
mov bl,14
mov si,R
call plot_char



cmp byte [player_won],1
jne lost


mov cx,140
mov dx,70
mov bl,14
mov si,Y
call plot_char


mov cx,148
mov dx,70
mov bl,14
mov si,O
call plot_char

mov cx,156
mov dx,70
mov bl,14
mov si,U
call plot_char

mov cx,164
mov dx,70
mov bl,00
mov si,clear_char
call plot_char

mov cx,172
mov dx,70
mov bl,14
mov si,W
call plot_char

mov cx,180
mov dx,70
mov bl,14
mov si,O
call plot_char

mov cx,188
mov dx,70
mov bl,14
mov si,N
call plot_char

jmp endd

lost:


mov cx,140
mov dx,70
mov bl,14
mov si,Y
call plot_char


mov cx,148
mov dx,70
mov bl,14
mov si,O
call plot_char

mov cx,156
mov dx,70
mov bl,14
mov si,U
call plot_char

mov cx,164
mov dx,70
mov bl,00
mov si,clear_char
call plot_char

mov cx,172
mov dx,70
mov bl,14
mov si,L
call plot_char

mov cx,180
mov dx,70
mov bl,14
mov si,O
call plot_char

mov cx,188
mov dx,70
mov bl,14
mov si,S
call plot_char

mov cx,196
mov dx,70
mov bl,14
mov si,T
call plot_char

endd:

;not in start use for score
    mov cx, 140 ; X position
    mov dx, 80 ; Y position
    mov bl, 14 ; Color
    mov si, S
    call plot_char

    mov cx, 148 ; X position
    mov dx, 80 ; Y position
    mov bl, 14 ; Color
    mov si, C
    call plot_char

 mov cx, 156 ; X position
    mov dx, 80 ; Y position
    mov bl, 14 ; Color
    mov si, O
    call plot_char


 mov cx, 164; X position
    mov dx, 80 ; Y position
    mov bl, 14 ; Color
    mov si, R
    call plot_char

 mov cx, 172 ; X position
    mov dx, 80 ; Y position
    mov bl, 14 ; Color
    mov si, E
    call plot_char



 mov cx, 180 ; X position
    mov dx, 80 ; Y position
    mov bl, 14 ; Color
    mov si, COLON
    call plot_char


push word 80
push word 190
call display_score
mov word [tickcount],0
mov word [count],60
mov word [lives],3
mov word [Score],0
mov word [superman],0

mov ah,0
int 16h
jmp start

popa
pop bp

ret

vertical_lines:

    push bp
    mov bp,sp
    push ax
    push bx
    push cx
    push si
    push dx
    
    mov al,48
    mov cx,[bp+4]

    l11:
       push di
       push cx
       mov cx,5
       rep stosb
       mov cx,dx
       
       pop cx
       pop di
       add di,320 

       loop l11

    pop dx
    pop si
    pop cx
    pop bx
    pop ax
    pop bp
    ret 2

horizontal_lines:

    push bp
    mov bp,sp
    push ax
    push bx
    push cx
    push si
    push dx
    
    mov al,48
    mov cx,[bp+4]
    mov si,5
    mov dx,cx

    l22:
       push di
       mov cx,[bp+4]
       rep stosb
       mov dx,di
       mov cx,di
       dec si
       pop di
       add di,320
       cmp si,0
       jg l22
    
    mov di,dx
    sub di,5
    
    pop dx
    pop si
    pop cx
    pop bx
    pop ax
    pop bp
    ret 2

make_menu:
      push bp
      mov bp,sp
      pusha 
           ;48
       mov cx,0
       mov word[pacman_bar],cx

       call clrscr_menu
       mov di,14080
       push 156
       call vertical_lines
       
       mov di,62400
       push 320
       call horizontal_lines

       mov di,14395
       push 156
       call vertical_lines
       
       mov di,14742
       add di,5120
       push di
       push 0x0E
       call pacman

       add di,10240
       push di
       push 0x0E
       call pacman

       mov cx,di
       add di,25

       push di
       push 42
       call draw_enemy ;pink 85 or 42
       mov bx,di

       add di,90
       push di
       push 0x0E
       call pacman

       add di,3840
       sub di,20
       push di
       push 0x04
       call draw_enemy

       add di,10
       push di
       push 0x03
       call draw_enemy

       add di,17
       push di
       push 42
       call draw_enemy

       add di,10
       push di
       push 85
       call draw_enemy
       
       mov di,bx

       add di,16640
       push di
       push 0x03
       call draw_enemy

       add di,73
       sub di,3200
       push di
       push 85
       call draw_enemy

       add di,53
       add di,12800
       push di
       push 0x04
       call draw_enemy

       add di,123
       sub di,12800
       add di,5120
       push di
       push 42
       call draw_enemy
       
        mov di,cx
       mov ax,di
       
       add di,50
       sub di,10240
       push di
       push 0x0E
       call pacman

       add di,10240
       push di
       push 0x0E
       call pacman
       

       add di,10240
       push di
       push 0x0E
       call pacman

       add di,10240
       push di
       push 0x0E
       call pacman

       add di,40
       push di
       push 0x0E
       call pacman

       add di,40
       push di
       push 0x0E
       call pacman

       add di,5440
       add di,50
       push di
       push 0x0E
       call pacman
       
       sub di,5120
       add di,50
       push di
       push 0x0E
       call pacman

       add di,43
       sub di,15360
        push di
       push 0x0E
       call pacman

       sub di,15360
        push di
       push 0x0E
       call pacman

       sub di,30
       push di
       push 0x0E
       call pacman

       sub di,13
       add di,15360
       push di
       push 0x0E
       call pacman
 
       mov di,ax

       add di,10240
       push di
       push 0x0E
       call pacman

       
       add di,10240
       push di
       push 0x0E
       call pacman

       mov di,14080
       push 50
       call horizontal_lines  

       push 30
       call vertical_lines
       
       mov bx,di
       mov dx,di
    
       push 20
       call horizontal_lines


       push 30
       call vertical_lines
       
       mov cx,di

       mov di,35885
       push 20
       call horizontal_lines
       
       mov di,35885
       push 30
       call vertical_lines

       mov di,cx
       add di,14720

       push 25
       call vertical_lines

       add di,35
       mov ax,di
       push 15
       call vertical_lines
       
       mov di,ax
       add di,30
       push 30
       call horizontal_lines
       
       sub di,12
       push 10
       call vertical_lines

       mov di,cx
       add di,1315
       push 22
       call vertical_lines

       push 20
       call horizontal_lines
       
       sub di,1280
       add di,25
       push 55
       call horizontal_lines
       mov cx,di

       push 13
       call vertical_lines
       
       push 40
       call horizontal_lines

       mov di,cx
       add di,35
       sub di,1280
       push 17
       call vertical_lines
       
       mov di,bx
       add di,175
       push 17
       call vertical_lines

       mov cx,di
       
       mov di,bx
       add di,177
       push 30
       call horizontal_lines

       sub di,12160
       mov ax,di
       push 35
       call vertical_lines

       mov di,ax
       push 70
       call horizontal_lines

       mov di,cx
       add di,60
       push 40
       call horizontal_lines

       mov di,cx
       add di,60
       push 45
       call vertical_lines

       add di,13760
       push 15
       call vertical_lines

       mov di,14080
       add di,50

       mov cx, 100 ; X position
       mov dx, 45; Y position
       mov bl, 13 ; Color
       mov si, M
       call plot_char

       mov cx, 110 ; X position
       mov dx, 45; Y position
       mov bl, 14 ; Color
       mov si, A
       call plot_char

       mov cx, 120 ; X position
       mov dx, 45; Y position
       mov bl, 10 ; Color
       mov si, Z
       call plot_char

       mov cx, 130 ; X position
       mov dx, 45; Y position
       mov bl, 0x0C ; Color
       mov si, E
       call plot_char

       mov cx, 145 ; X position
       mov dx, 45; Y position
       mov bl, 9 ; Color
       mov si, R
       call plot_char

       mov cx, 155 ; X position
       mov dx, 45; Y position
       mov bl, 9 ; Color
       mov si, U
       call plot_char

       mov cx, 165 ; X position
       mov dx, 45; Y position
       mov bl, 9 ; Color
       mov si, N
       call plot_char

       mov cx, 175 ; X position
       mov dx, 45; Y position
       mov bl, 9 ; Color
       mov si, N
       call plot_char

       mov cx, 185 ; X position
       mov dx, 45; Y position
       mov bl, 9 ; Color
       mov si, E
       call plot_char

       mov cx, 193 ; X position
       mov dx, 45; Y position
       mov bl, 9 ; Color
       mov si, R
       call plot_char

       mov cx, 137 ; X position
       mov dx, 60; Y position
       mov bl, 0 ; Color
       mov si, X
       call plot_char

       mov cx, 120 ; X position
       mov dx, 75; Y position
       mov bl, 0x0E ; Color
       mov si, P
       call plot_char

       mov cx, 128 ; X position
       mov dx, 75; Y position
       mov bl, 0x0E ; Color
       mov si, A
       call plot_char
       
       mov cx, 137 ; X position
       mov dx, 75; Y position
       mov bl, 0x0E ; Color
       mov si, C
       call plot_char

       mov cx, 146 ; X position
       mov dx, 75; Y position
       mov bl, 0x0E ; Color
       mov si, M
       call plot_char

       mov cx, 154 ; X position
       mov dx, 75; Y position
       mov bl, 0x0E ; Color
       mov si, A
       call plot_char

       mov cx, 162 ; X position
       mov dx, 75; Y position
       mov bl, 0x0E ; Color
       mov si, N
       call plot_char

       mov cx, 0 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, P
       call plot_char

       mov cx, 10 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, R
       call plot_char

        mov cx, 20 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, E
       call plot_char

       mov cx, 30 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, S
       call plot_char

       mov cx, 40 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, S
       call plot_char
      
        mov cx, 5 ; X position
       mov dx, 20; Y position
       mov bl, 0x0E ; Color
       mov si, P
       call plot_char

       mov cx, 20 ; X position
       mov dx, 20; Y position
       mov bl, 0x0E ; Color
       mov si, T
       call plot_char

       mov cx, 30 ; X position
       mov dx, 20; Y position
       mov bl, 0x0E ; Color
       mov si, O
       call plot_char

        mov cx, 3 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, P
       call plot_char

        mov cx, 13 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, L
       call plot_char

        mov cx, 23 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, A
       call plot_char

        mov cx, 33 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, Y
       call plot_char

     ;

       mov cx, 270 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, P
       call plot_char

       mov cx, 280 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, R
       call plot_char

        mov cx, 290 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, E
       call plot_char

       mov cx, 300 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, S
       call plot_char

       mov cx, 310 ; X position
       mov dx, 10; Y position
       mov bl, 0x0C ; Color
       mov si, S
       call plot_char
      
        mov cx, 275 ; X position
       mov dx, 20; Y position
       mov bl, 0x0E ; Color
       mov si, Q
       call plot_char

       mov cx, 290 ; X position
       mov dx, 20; Y position
       mov bl, 0x0E ; Color
       mov si, T
       call plot_char

       mov cx, 300 ; X position
       mov dx, 20; Y position
       mov bl, 0x0E ; Color
       mov si, O
       call plot_char

       mov cx, 273 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, Q
       call plot_char

       mov cx, 283 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, U
       call plot_char

       mov cx, 293 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, I
       call plot_char

       mov cx, 303 ; X position
       mov dx, 30; Y position
       mov bl, 0x0B ; Color
       mov si, T
       call plot_char
       
       mov cx,1
       mov word[pacman_bar],cx

       int 16h
        
      popa
      mov sp,bp
      pop bp
      ret

start:


mov word [player_won],0
mov cx,0
mov word[timer_flag],cx
initialize_video_mode:

mov ah, 0x00 ; Function: Set video mode
mov al, 0x13 ; Mode 13h
int 0x10 ; Video BIOS interrupt

initialize_video_memory:

mov ax, 0xA000 ; Video memory segment
mov es, ax ; ES points to video memory

menuu:
    call make_menu
l33:
    mov ah,0
    int 16h
    
   
    cmp al,0x51
    je quit

    cmp al,0x71
    je quit
    
    cmp al,80
    je clear_the_screen

    cmp al,112
    je clear_the_screen

    jmp l33

clear_the_screen:
mov cx,1
mov word[timer_flag],cx
call clrscr

generate_maze:

mov ax,0
call GenRandNum
mov ax,[randNum]

cmp ax,1
je pushm1

cmp ax,2
je pushm2

cmp ax,3
je pushm3

cmp ax,4
je pushm4

cmp ax,5
je pushm5

pushm1:
push maze1
jmp genmazefunc
pushm2:
push maze2
jmp genmazefunc
pushm3:
push maze3
jmp genmazefunc
pushm4:
push maze4
jmp genmazefunc
pushm5:
push maze5
jmp genmazefunc

genmazefunc:
call maze_copy
push maze_current
call gen_maze  

;not in start use for score
    mov cx, 210 ; X position
    mov dx, 10 ; Y position
    mov bl, 14 ; Color
    mov si, S
    call plot_char

    mov cx, 218 ; X position
    mov dx, 10 ; Y position
    mov bl, 14 ; Color
    mov si, C
    call plot_char

 mov cx, 226 ; X position
    mov dx, 10 ; Y position
    mov bl, 14 ; Color
    mov si, O
    call plot_char


 mov cx, 234 ; X position
    mov dx, 10 ; Y position
    mov bl, 14 ; Color
    mov si, R
    call plot_char

 mov cx, 242 ; X position
    mov dx, 10 ; Y position
    mov bl, 14 ; Color
    mov si, E
    call plot_char


 mov cx, 250 ; X position
    mov dx, 10 ; Y position
    mov bl, 14 ; Color
    mov si, COLON
    call plot_char
	
 mov cx,280
 mov si,ZERO
 call plot_char

;Timer

mov cx,210
mov dx,30
mov bl,14
mov si,T
call plot_char

    mov cx, 218 ; X position
    mov dx, 30 ; Y position
    mov bl, 14 ; Color
    mov si, I
    call plot_char

    mov cx, 226 ; X position
    mov dx, 30 ; Y position
    mov bl, 14 ; Color
    mov si, M
    call plot_char


 mov cx, 236 ; X position
    mov dx, 30 ; Y position
    mov bl, 14 ; Color
    mov si, E
    call plot_char

    mov cx, 244 ; X position
    mov dx, 30 ; Y position
    mov bl, 14 ; Color
    mov si, R
    call plot_char

 mov cx, 252 ; X position
    mov dx, 30 ; Y position
    mov bl, 14 ; Color
    mov si, COLON
    call plot_char

;push 57790

mov ax,0
mov es,ax
 cli ; disable interrupts
 mov word [es:8*4], timer; store offset at n*4
 mov [es:8*4+2], cs ; store segment at n*4+2
 mov ax,0xa000
 mov es,ax
 sti ; enable interrupts

;Lives

mov cx,212
mov dx,50
mov bl,14
mov si,L
call plot_char

mov cx,218
mov dx,50
mov bl,14
mov si,I
call plot_char

mov cx,226
mov dx,50
mov bl,14
mov si,V
call plot_char

mov cx,236
mov dx,50
mov bl,14
mov si,E
call plot_char

mov cx,244
mov dx,50
mov bl,14
mov si,S
call plot_char

mov cx,252
mov dx,50
mov bl,14
mov si,COLON
call plot_char
;push 57790

push 16272
push 0X0E
call pacman

push 16280
push 0X0E
call pacman

push 16288
push 0X0E
call pacman


mov cx, 212 ; X position
mov dx, 150 ; Y position
mov bl, 15 ; Color
mov si, W
call plot_char

mov cx, 220 ; X position
mov dx, 150 ; Y position
mov bl, 15  ; Color
mov si, A
call plot_char

mov cx, 228 ; X position
mov dx, 150 ; Y position
mov bl, 15  ; Color
mov si, S
call plot_char

mov cx, 236 ; X position
mov dx, 150; Y position
mov bl, 15  ; Color
mov si, D
call plot_char

mov cx, 246 ; X position
mov dx, 150; Y position
mov bl, 15  ; Color
mov si, T
call plot_char

mov cx, 254 ; X position
mov dx,  150 ; Y position
mov bl, 15  ; Color
mov si, O
call plot_char

mov cx, 266 ; X position
mov dx,   150 ; Y position
mov bl, 15  ; Color
mov si, M
call plot_char

mov cx, 276 ; X position
mov dx,   150 ; Y position
mov bl, 15  ; Color
mov si, O
call plot_char

mov cx, 286 ; X position
mov dx,  150 ; Y position
mov bl, 15  ; Color
mov si, V
call plot_char

mov cx, 296 ; X position
mov dx,   150; Y position
mov bl, 15  ; Color
mov si, E
call plot_char


Play:


playgamefunc:
push maze_current
call play_game


quit:
call clrscr
mov ax,0x4c00
int 0x21
