#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_12__ {int /*<<< orphan*/ * NonResidentStart; int /*<<< orphan*/ * NonResidentEnd; int /*<<< orphan*/  Vcb; scalar_t__ OnlyResident; TYPE_1__* CurrAttr; } ;
struct TYPE_11__ {int /*<<< orphan*/  pRecord; } ;
struct TYPE_10__ {scalar_t__ Type; } ;
typedef  TYPE_1__* PNTFS_ATTR_RECORD ;
typedef  TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/ * PNTFS_ATTRIBUTE_LIST_ITEM ;
typedef  TYPE_3__* PFIND_ATTR_CONTXT ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ AttributeAttributeList ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  STATUS_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  STATUS_FILE_CORRUPT_ERROR ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_NTFS ; 

__attribute__((used)) static
NTSTATUS
FUNC8(PFIND_ATTR_CONTXT Context)
{
    ULONGLONG ListSize;
    PNTFS_ATTR_RECORD Attribute;
    PNTFS_ATTR_CONTEXT ListContext;

    FUNC2("InternalReadNonResidentAttributes(%p)\n", Context);

    Attribute = Context->CurrAttr;
    FUNC0(Attribute->Type == AttributeAttributeList);

    if (Context->OnlyResident)
    {
        Context->NonResidentStart = NULL;
        Context->NonResidentEnd = NULL;
        return STATUS_SUCCESS;
    }

    if (Context->NonResidentStart != NULL)
    {
        return STATUS_FILE_CORRUPT_ERROR;
    }

    ListContext = FUNC5(Attribute);
    ListSize = FUNC1(ListContext->pRecord);
    if (ListSize > 0xFFFFFFFF)
    {
        FUNC7(ListContext);
        return STATUS_BUFFER_OVERFLOW;
    }

    Context->NonResidentStart = FUNC3(NonPagedPool, (ULONG)ListSize, TAG_NTFS);
    if (Context->NonResidentStart == NULL)
    {
        FUNC7(ListContext);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    if (FUNC6(Context->Vcb, ListContext, 0, (PCHAR)Context->NonResidentStart, (ULONG)ListSize) != ListSize)
    {
        FUNC4(Context->NonResidentStart, TAG_NTFS);
        Context->NonResidentStart = NULL;
        FUNC7(ListContext);
        return STATUS_FILE_CORRUPT_ERROR;
    }

    FUNC7(ListContext);
    Context->NonResidentEnd = (PNTFS_ATTRIBUTE_LIST_ITEM)((PCHAR)Context->NonResidentStart + ListSize);
    return STATUS_SUCCESS;
}