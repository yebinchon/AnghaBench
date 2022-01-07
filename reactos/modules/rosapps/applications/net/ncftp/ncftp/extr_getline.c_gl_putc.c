
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,char*,int) ;

__attribute__((used)) static void
gl_putc(int c)
{
    char ch = (char) (unsigned char) c;

    write(1, &ch, 1);
    if (ch == '\n') {
 ch = '\r';
        write(1, &ch, 1);
    }
}
