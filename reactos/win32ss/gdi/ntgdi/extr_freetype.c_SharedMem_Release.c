
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ RefCount; struct TYPE_7__* Buffer; scalar_t__ IsMapping; } ;
typedef TYPE_1__* PSHARED_MEM ;


 int ASSERT (int) ;
 int ASSERT_FREETYPE_LOCK_HELD () ;
 int DPRINT (char*,TYPE_1__*,scalar_t__,TYPE_1__*) ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int MmUnmapViewInSystemSpace (TYPE_1__*) ;
 int TAG_FONT ;

__attribute__((used)) static void SharedMem_Release(PSHARED_MEM Ptr)
{
    ASSERT_FREETYPE_LOCK_HELD();
    ASSERT(Ptr->RefCount > 0);

    if (Ptr->RefCount <= 0)
        return;

    --Ptr->RefCount;
    if (Ptr->RefCount == 0)
    {
        DPRINT("Releasing SharedMem for %p (%i, %p)\n", Ptr->Buffer, Ptr->IsMapping, Ptr);
        if (Ptr->IsMapping)
            MmUnmapViewInSystemSpace(Ptr->Buffer);
        else
            ExFreePoolWithTag(Ptr->Buffer, TAG_FONT);
        ExFreePoolWithTag(Ptr, TAG_FONT);
    }
}
