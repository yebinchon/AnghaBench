
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int left; int top; int right; int bottom; } ;
struct TYPE_7__ {int nCount; } ;
struct TYPE_8__ {TYPE_1__ rdh; scalar_t__ Buffer; } ;
typedef TYPE_2__ RGNDATA ;
typedef TYPE_3__ RECT ;
typedef int HRGN ;
typedef scalar_t__ DWORD ;


 int GetProcessHeap () ;
 scalar_t__ GetRegionData (int ,scalar_t__,TYPE_2__*) ;
 TYPE_2__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void dump_region(HRGN hrgn)
{
    DWORD i, size;
    RGNDATA *data = ((void*)0);
    RECT *rect;

    if (!hrgn)
    {
        printf( "(null) region\n" );
        return;
    }
    if (!(size = GetRegionData( hrgn, 0, ((void*)0) ))) return;
    if (!(data = HeapAlloc( GetProcessHeap(), 0, size ))) return;
    GetRegionData( hrgn, size, data );
    printf( "%d rects:", data->rdh.nCount );
    for (i = 0, rect = (RECT *)data->Buffer; i < data->rdh.nCount; i++, rect++)
        printf( " (%d,%d)-(%d,%d)", rect->left, rect->top, rect->right, rect->bottom );
    printf( "\n" );
    HeapFree( GetProcessHeap(), 0, data );
}
