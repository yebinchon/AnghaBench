
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int ULONGLONG ;
typedef int * PUSHORT ;
typedef int * PULONGLONG ;
typedef int * PULONG ;
typedef int * PUCHAR ;
typedef int LONG ;


 int KdpPhysMap (int ,int) ;

__attribute__((used)) static
ULONGLONG
KdpPhysRead(ULONG_PTR PhysAddr, LONG Len)
{
    ULONG_PTR Addr;
    ULONGLONG Result = 0;

    Addr = KdpPhysMap(PhysAddr, Len);

    switch (Len)
    {
    case 8:
        Result = *((PULONGLONG)Addr);
        break;
    case 4:
        Result = *((PULONG)Addr);
        break;
    case 2:
        Result = *((PUSHORT)Addr);
        break;
    case 1:
        Result = *((PUCHAR)Addr);
        break;
    }

    return Result;
}
