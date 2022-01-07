
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUL ;
 int get_keystroke () ;
 int vgetc () ;

int
safe_vgetc()
{
    int c;

    c = vgetc();
    if (c == NUL)
 c = get_keystroke();
    return c;
}
