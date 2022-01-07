
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nFlags; scalar_t__ nWidth; int nDescent; int nAscent; int len; } ;
struct TYPE_6__ {scalar_t__ cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ ME_Run ;
typedef int ME_Paragraph ;
typedef int ME_Context ;


 int MERF_HIDDEN ;
 TYPE_1__ ME_GetRunSizeCommon (int *,int const*,TYPE_2__*,int ,int,int *,int *) ;

__attribute__((used)) static void calc_run_extent(ME_Context *c, const ME_Paragraph *para, int startx, ME_Run *run)
{
    if (run->nFlags & MERF_HIDDEN) run->nWidth = 0;
    else
    {
        SIZE size = ME_GetRunSizeCommon( c, para, run, run->len, startx, &run->nAscent, &run->nDescent );
        run->nWidth = size.cx;
    }
}
