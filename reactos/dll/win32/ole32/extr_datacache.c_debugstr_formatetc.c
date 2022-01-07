
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tymed; int lindex; int dwAspect; int ptd; int cfFormat; } ;
typedef TYPE_1__ FORMATETC ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ,int ) ;

const char *debugstr_formatetc(const FORMATETC *formatetc)
{
    return wine_dbg_sprintf("{ cfFormat = 0x%x, ptd = %p, dwAspect = %d, lindex = %d, tymed = %d }",
        formatetc->cfFormat, formatetc->ptd, formatetc->dwAspect,
        formatetc->lindex, formatetc->tymed);
}
