
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG_PTR ;
typedef void* ULONGLONG ;
typedef void** PUSHORT ;
typedef void** PULONGLONG ;
typedef void** PULONG ;
typedef void** PUCHAR ;
typedef int LONG ;


 int KdpPhysMap (int ,int) ;

__attribute__((used)) static
VOID
KdpPhysWrite(ULONG_PTR PhysAddr, LONG Len, ULONGLONG Value)
{
    ULONG_PTR Addr;

    Addr = KdpPhysMap(PhysAddr, Len);

    switch (Len)
    {
    case 8:
        *((PULONGLONG)Addr) = Value;
        break;
    case 4:
        *((PULONG)Addr) = Value;
        break;
    case 2:
        *((PUSHORT)Addr) = Value;
        break;
    case 1:
        *((PUCHAR)Addr) = Value;
        break;
    }
}
