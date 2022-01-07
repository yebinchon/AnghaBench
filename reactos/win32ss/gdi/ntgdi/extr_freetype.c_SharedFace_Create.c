
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* family_name; } ;
struct TYPE_6__ {int RefCount; int UserLanguage; int EnglishUS; int Memory; TYPE_2__* Face; } ;
typedef int SHARED_FACE ;
typedef int PSHARED_MEM ;
typedef TYPE_1__* PSHARED_FACE ;
typedef TYPE_2__* FT_Face ;


 int DPRINT (char*,char*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int PagedPool ;
 int SharedFaceCache_Init (int *) ;
 int SharedMem_AddRef (int ) ;
 int TAG_FONT ;

__attribute__((used)) static PSHARED_FACE
SharedFace_Create(FT_Face Face, PSHARED_MEM Memory)
{
    PSHARED_FACE Ptr;
    Ptr = ExAllocatePoolWithTag(PagedPool, sizeof(SHARED_FACE), TAG_FONT);
    if (Ptr)
    {
        Ptr->Face = Face;
        Ptr->RefCount = 1;
        Ptr->Memory = Memory;
        SharedFaceCache_Init(&Ptr->EnglishUS);
        SharedFaceCache_Init(&Ptr->UserLanguage);

        SharedMem_AddRef(Memory);
        DPRINT("Creating SharedFace for %s\n", Face->family_name ? Face->family_name : "<NULL>");
    }
    return Ptr;
}
