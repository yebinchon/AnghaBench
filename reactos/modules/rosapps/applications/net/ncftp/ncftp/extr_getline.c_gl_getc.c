
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int _NKEYBRD_READ ;
 int _bios_keybrd (int ) ;
 scalar_t__ _getch () ;
 scalar_t__ errno ;
 int pc_keymap (int) ;
 scalar_t__ read (int ,char*,int) ;

__attribute__((used)) static int
gl_getc(void)

{
    int c;

    char ch;



    ch = '\0';
    while ((c = (int) read(0, &ch, 1)) == -1) {
 if (errno != EINTR)
     break;
    }
    if (c != (-1))
     c = (int) ch;
    return c;
}
