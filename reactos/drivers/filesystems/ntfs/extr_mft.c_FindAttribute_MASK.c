#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_32__ {int /*<<< orphan*/  Offset; } ;
struct TYPE_31__ {int /*<<< orphan*/  FileRecLookasideList; } ;
struct TYPE_30__ {int MFTRecordNumber; } ;
struct TYPE_29__ {scalar_t__ Type; scalar_t__ NameLength; int MFTIndex; scalar_t__ NameOffset; } ;
struct TYPE_28__ {int FileMFTIndex; } ;
struct TYPE_27__ {scalar_t__ Type; scalar_t__ NameLength; scalar_t__ NameOffset; } ;
typedef  scalar_t__ PWCHAR ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_1__* PNTFS_ATTR_RECORD ;
typedef  TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef  TYPE_3__* PNTFS_ATTRIBUTE_LIST_ITEM ;
typedef  TYPE_4__* PFILE_RECORD_HEADER ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_6__ FIND_ATTR_CONTXT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*,TYPE_4__*,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_3__**) ; 
 int NTFS_MFT_MASK ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int,TYPE_4__*) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 

NTSTATUS
FUNC13(PDEVICE_EXTENSION Vcb,
              PFILE_RECORD_HEADER MftRecord,
              ULONG Type,
              PCWSTR Name,
              ULONG NameLength,
              PNTFS_ATTR_CONTEXT * AttrCtx,
              PULONG Offset)
{
    BOOLEAN Found;
    NTSTATUS Status;
    FIND_ATTR_CONTXT Context;
    PNTFS_ATTR_RECORD Attribute;
    PNTFS_ATTRIBUTE_LIST_ITEM AttrListItem;

    FUNC0("FindAttribute(%p, %p, 0x%x, %S, %lu, %p, %p)\n", Vcb, MftRecord, Type, Name, NameLength, AttrCtx, Offset);

    Found = FALSE;
    Status = FUNC5(&Context, Vcb, MftRecord, FALSE, &Attribute);
    while (FUNC9(Status))
    {
        if (Attribute->Type == Type && Attribute->NameLength == NameLength)
        {
            if (NameLength != 0)
            {
                PWCHAR AttrName;

                AttrName = (PWCHAR)((PCHAR)Attribute + Attribute->NameOffset);
                FUNC0("%.*S, %.*S\n", Attribute->NameLength, AttrName, NameLength, Name);
                if (FUNC12(AttrName, Name, NameLength * sizeof(WCHAR)) == (NameLength  * sizeof(WCHAR)))
                {
                    Found = TRUE;
                }
            }
            else
            {
                Found = TRUE;
            }

            if (Found)
            {
                /* Found it, fill up the context and return. */
                FUNC0("Found context\n");
                *AttrCtx = FUNC10(Attribute);

                (*AttrCtx)->FileMFTIndex = MftRecord->MFTRecordNumber;

                if (Offset != NULL)
                    *Offset = Context.Offset;

                FUNC4(&Context);
                return STATUS_SUCCESS;
            }
        }

        Status = FUNC7(&Context, &Attribute);
    }

    /* No attribute found, check if it is referenced in another file record */
    Status = FUNC6(&Context, &AttrListItem);
    while (FUNC9(Status))
    {
        if (AttrListItem->Type == Type && AttrListItem->NameLength == NameLength)
        {
            if (NameLength != 0)
            {
                PWCHAR AttrName;

                AttrName = (PWCHAR)((PCHAR)AttrListItem + AttrListItem->NameOffset);
                FUNC0("%.*S, %.*S\n", AttrListItem->NameLength, AttrName, NameLength, Name);
                if (FUNC12(AttrName, Name, NameLength * sizeof(WCHAR)) == (NameLength  * sizeof(WCHAR)))
                {
                    Found = TRUE;
                }
            }
            else
            {
                Found = TRUE;
            }

            if (Found == TRUE)
            {
                /* Get the MFT Index of attribute */
                ULONGLONG MftIndex;
                PFILE_RECORD_HEADER RemoteHdr;

                MftIndex = AttrListItem->MFTIndex & NTFS_MFT_MASK;
                RemoteHdr = FUNC2(&Vcb->FileRecLookasideList);

                if (RemoteHdr == NULL)
                {
                    FUNC4(&Context);
                    return STATUS_INSUFFICIENT_RESOURCES;
                }

                /* Check we are not reading ourselves */
                if (MftRecord->MFTRecordNumber == MftIndex)
                {
                    FUNC1("Attribute list references missing attribute to this file entry !");
                    FUNC3(&Vcb->FileRecLookasideList, RemoteHdr);
                    FUNC4(&Context);
                    return STATUS_OBJECT_NAME_NOT_FOUND;
                }
                /* Read the new file record */
                FUNC11(Vcb, MftIndex, RemoteHdr);
                Status = FUNC13(Vcb, RemoteHdr, Type, Name, NameLength, AttrCtx, Offset);
                FUNC3(&Vcb->FileRecLookasideList, RemoteHdr);
                FUNC4(&Context);
                return Status;
            }
        }
        Status = FUNC8(&Context, &AttrListItem);
    }
    FUNC4(&Context);
    return STATUS_OBJECT_NAME_NOT_FOUND;
}