
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_12__ {int * NonResidentStart; int * NonResidentEnd; int Vcb; scalar_t__ OnlyResident; TYPE_1__* CurrAttr; } ;
struct TYPE_11__ {int pRecord; } ;
struct TYPE_10__ {scalar_t__ Type; } ;
typedef TYPE_1__* PNTFS_ATTR_RECORD ;
typedef TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef int * PNTFS_ATTRIBUTE_LIST_ITEM ;
typedef TYPE_3__* PFIND_ATTR_CONTXT ;
typedef scalar_t__ PCHAR ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 scalar_t__ AttributeAttributeList ;
 int AttributeDataLength (int ) ;
 int DPRINT (char*,TYPE_3__*) ;
 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int NonPagedPool ;
 TYPE_2__* PrepareAttributeContext (TYPE_1__*) ;
 int ReadAttribute (int ,TYPE_2__*,int ,scalar_t__,int ) ;
 int ReleaseAttributeContext (TYPE_2__*) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_FILE_CORRUPT_ERROR ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;

__attribute__((used)) static
NTSTATUS
InternalReadNonResidentAttributes(PFIND_ATTR_CONTXT Context)
{
    ULONGLONG ListSize;
    PNTFS_ATTR_RECORD Attribute;
    PNTFS_ATTR_CONTEXT ListContext;

    DPRINT("InternalReadNonResidentAttributes(%p)\n", Context);

    Attribute = Context->CurrAttr;
    ASSERT(Attribute->Type == AttributeAttributeList);

    if (Context->OnlyResident)
    {
        Context->NonResidentStart = ((void*)0);
        Context->NonResidentEnd = ((void*)0);
        return STATUS_SUCCESS;
    }

    if (Context->NonResidentStart != ((void*)0))
    {
        return STATUS_FILE_CORRUPT_ERROR;
    }

    ListContext = PrepareAttributeContext(Attribute);
    ListSize = AttributeDataLength(ListContext->pRecord);
    if (ListSize > 0xFFFFFFFF)
    {
        ReleaseAttributeContext(ListContext);
        return STATUS_BUFFER_OVERFLOW;
    }

    Context->NonResidentStart = ExAllocatePoolWithTag(NonPagedPool, (ULONG)ListSize, TAG_NTFS);
    if (Context->NonResidentStart == ((void*)0))
    {
        ReleaseAttributeContext(ListContext);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    if (ReadAttribute(Context->Vcb, ListContext, 0, (PCHAR)Context->NonResidentStart, (ULONG)ListSize) != ListSize)
    {
        ExFreePoolWithTag(Context->NonResidentStart, TAG_NTFS);
        Context->NonResidentStart = ((void*)0);
        ReleaseAttributeContext(ListContext);
        return STATUS_FILE_CORRUPT_ERROR;
    }

    ReleaseAttributeContext(ListContext);
    Context->NonResidentEnd = (PNTFS_ATTRIBUTE_LIST_ITEM)((PCHAR)Context->NonResidentStart + ListSize);
    return STATUS_SUCCESS;
}
