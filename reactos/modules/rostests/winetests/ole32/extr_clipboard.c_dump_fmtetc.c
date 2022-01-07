
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfFormat; int dwAspect; int lindex; int tymed; int ptd; } ;
typedef TYPE_1__ FORMATETC ;


 int sprintf (char*,char*,int,int ,int,int,int) ;

__attribute__((used)) static inline char *dump_fmtetc(FORMATETC *fmt)
{
    static char buf[100];

    sprintf(buf, "cf %04x ptd %p aspect %x lindex %d tymed %x",
             fmt->cfFormat, fmt->ptd, fmt->dwAspect, fmt->lindex, fmt->tymed);
    return buf;
}
