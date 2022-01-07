
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tb_len; } ;


 int ESC ;
 int NUL ;
 TYPE_1__ typebuf ;
 int vpeekc () ;

int
vpeekc_any()
{
    int c;

    c = vpeekc();
    if (c == NUL && typebuf.tb_len > 0)
 c = ESC;
    return c;
}
