
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_1__ POINTS ;
typedef TYPE_2__ POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int META_POLYLINE ;
 int MFDRV_MetaPoly (int ,int ,TYPE_1__*,int) ;

BOOL MFDRV_Polyline( PHYSDEV dev, const POINT* pt, INT count )
{
    int i;
    POINTS *pts;
    BOOL ret;

    pts = HeapAlloc( GetProcessHeap(), 0, sizeof(POINTS)*count );
    if(!pts) return FALSE;
    for (i=count;i--;)
    {
        pts[i].x = pt[i].x;
        pts[i].y = pt[i].y;
    }
    ret = MFDRV_MetaPoly(dev, META_POLYLINE, pts, count);

    HeapFree( GetProcessHeap(), 0, pts );
    return ret;
}
