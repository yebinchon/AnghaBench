
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nCount; } ;
struct TYPE_7__ {TYPE_1__ rdh; } ;
typedef TYPE_2__ RGNDATA ;
typedef int HRGN ;
typedef scalar_t__ DWORD ;


 int GetProcessHeap () ;
 scalar_t__ GetRegionData (int ,scalar_t__,TYPE_2__*) ;
 TYPE_2__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static DWORD rgn_rect_count(HRGN hrgn)
{
    DWORD size;
    RGNDATA *data;

    if (!hrgn) return 0;
    if (!(size = GetRegionData(hrgn, 0, ((void*)0)))) return 0;
    if (!(data = HeapAlloc(GetProcessHeap(), 0, size))) return 0;
    GetRegionData(hrgn, size, data);
    size = data->rdh.nCount;
    HeapFree(GetProcessHeap(), 0, data);
    return size;
}
