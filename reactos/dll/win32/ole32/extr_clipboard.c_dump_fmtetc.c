
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tymed; int lindex; int dwAspect; int ptd; int cfFormat; } ;
typedef TYPE_1__ FORMATETC ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline const char *dump_fmtetc(FORMATETC *fmt)
{
    if (!fmt) return "(null)";
    return wine_dbg_sprintf("cf %04x ptd %p aspect %x lindex %d tymed %x",
                            fmt->cfFormat, fmt->ptd, fmt->dwAspect, fmt->lindex, fmt->tymed);
}
