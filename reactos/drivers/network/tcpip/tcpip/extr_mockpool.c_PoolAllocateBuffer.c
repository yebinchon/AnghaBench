
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;


 int DEBUG_MEMORY ;
 int TI_DbgPrint (int ,char*) ;
 int malloc (int ) ;

PVOID PoolAllocateBuffer(
    ULONG Size)






{
    PVOID Buffer;



    Buffer = malloc(Size);

    TI_DbgPrint(DEBUG_MEMORY, ("Allocated (%i) bytes at (0x%X).\n", Size, Buffer));

    return Buffer;
}
