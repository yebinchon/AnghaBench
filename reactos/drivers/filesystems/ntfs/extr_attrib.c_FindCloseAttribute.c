
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int * NonResidentStart; } ;
typedef TYPE_1__* PFIND_ATTR_CONTXT ;


 int ExFreePoolWithTag (int *,int ) ;
 int TAG_NTFS ;

VOID
FindCloseAttribute(PFIND_ATTR_CONTXT Context)
{
    if (Context->NonResidentStart != ((void*)0))
    {
        ExFreePoolWithTag(Context->NonResidentStart, TAG_NTFS);
        Context->NonResidentStart = ((void*)0);
    }
}
