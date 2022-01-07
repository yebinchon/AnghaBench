
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int RefCount; int IsMapping; int BufferSize; int Buffer; } ;
typedef int SHARED_MEM ;
typedef TYPE_1__* PSHARED_MEM ;
typedef int PBYTE ;
typedef int BOOL ;


 int DPRINT (char*,int ,int ,TYPE_1__*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int PagedPool ;
 int TAG_FONT ;

__attribute__((used)) static PSHARED_MEM
SharedMem_Create(PBYTE Buffer, ULONG BufferSize, BOOL IsMapping)
{
    PSHARED_MEM Ptr;
    Ptr = ExAllocatePoolWithTag(PagedPool, sizeof(SHARED_MEM), TAG_FONT);
    if (Ptr)
    {
        Ptr->Buffer = Buffer;
        Ptr->BufferSize = BufferSize;
        Ptr->RefCount = 1;
        Ptr->IsMapping = IsMapping;
        DPRINT("Creating SharedMem for %p (%i, %p)\n", Buffer, IsMapping, Ptr);
    }
    return Ptr;
}
