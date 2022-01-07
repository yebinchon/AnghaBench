
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {int y; int x; } ;
typedef TYPE_1__ POINTS ;
typedef TYPE_2__ POINT ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;

__attribute__((used)) static POINT *convert_points( UINT count, const POINTS *pts )
{
    UINT i;
    POINT *ret = HeapAlloc( GetProcessHeap(), 0, count * sizeof(*ret) );
    if (ret)
    {
        for (i = 0; i < count; i++)
        {
            ret[i].x = pts[i].x;
            ret[i].y = pts[i].y;
        }
    }
    return ret;
}
