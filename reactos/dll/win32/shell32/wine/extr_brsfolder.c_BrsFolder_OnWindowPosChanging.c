
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_9__ {TYPE_2__ szMin; TYPE_1__* lpBrowseInfo; } ;
typedef TYPE_3__ browse_info ;
struct TYPE_10__ {int flags; scalar_t__ cx; scalar_t__ cy; } ;
typedef TYPE_4__ WINDOWPOS ;
struct TYPE_7__ {int ulFlags; } ;
typedef int LRESULT ;


 int BIF_NEWDIALOGSTYLE ;
 int SWP_NOSIZE ;

__attribute__((used)) static LRESULT BrsFolder_OnWindowPosChanging(browse_info *info, WINDOWPOS *pos)
{
    if ((info->lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE) && !(pos->flags & SWP_NOSIZE))
    {
        if (pos->cx < info->szMin.cx)
            pos->cx = info->szMin.cx;
        if (pos->cy < info->szMin.cy)
            pos->cy = info->szMin.cy;
    }
    return 0;
}
