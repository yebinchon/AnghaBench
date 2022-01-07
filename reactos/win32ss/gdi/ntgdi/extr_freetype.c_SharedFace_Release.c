
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* family_name; } ;
struct TYPE_6__ {scalar_t__ RefCount; int UserLanguage; int EnglishUS; int Memory; TYPE_3__* Face; } ;
typedef TYPE_1__* PSHARED_FACE ;


 int ASSERT (int) ;
 int DPRINT (char*,char*) ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int FT_Done_Face (TYPE_3__*) ;
 int IntLockFreeType () ;
 int IntUnLockFreeType () ;
 int RemoveCacheEntries (TYPE_3__*) ;
 int SharedFaceCache_Release (int *) ;
 int SharedMem_Release (int ) ;
 int TAG_FONT ;

__attribute__((used)) static void
SharedFace_Release(PSHARED_FACE Ptr)
{
    IntLockFreeType();
    ASSERT(Ptr->RefCount > 0);

    if (Ptr->RefCount <= 0)
        return;

    --Ptr->RefCount;
    if (Ptr->RefCount == 0)
    {
        DPRINT("Releasing SharedFace for %s\n", Ptr->Face->family_name ? Ptr->Face->family_name : "<NULL>");
        RemoveCacheEntries(Ptr->Face);
        FT_Done_Face(Ptr->Face);
        SharedMem_Release(Ptr->Memory);
        SharedFaceCache_Release(&Ptr->EnglishUS);
        SharedFaceCache_Release(&Ptr->UserLanguage);
        ExFreePoolWithTag(Ptr, TAG_FONT);
    }
    IntUnLockFreeType();
}
