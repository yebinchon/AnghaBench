#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_26__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_29__ {int /*<<< orphan*/  FileRecLookasideList; TYPE_2__ NtfsInfo; } ;
struct TYPE_28__ {scalar_t__ SequenceNumber; scalar_t__ AttributeOffset; int /*<<< orphan*/  Flags; } ;
struct TYPE_25__ {scalar_t__ ValueOffset; } ;
struct TYPE_27__ {scalar_t__ Length; TYPE_1__ Resident; } ;
typedef  TYPE_3__* PNTFS_ATTR_RECORD ;
typedef  int /*<<< orphan*/  PINDEX_ROOT_ATTRIBUTE ;
typedef  TYPE_4__* PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  scalar_t__ PFILENAME_ATTRIBUTE ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PB_TREE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_5__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FRH_DIRECTORY ; 
 scalar_t__ NTFS_FILE_ROOT ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_NTFS ; 

NTSTATUS
FUNC15(PDEVICE_EXTENSION DeviceExt,
                    PFILE_OBJECT FileObject,
                    BOOLEAN CaseSensitive,
                    BOOLEAN CanWait)
{

    NTSTATUS Status = STATUS_SUCCESS;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_RECORD NextAttribute;
    PFILENAME_ATTRIBUTE FilenameAttribute;
    ULONGLONG ParentMftIndex;
    ULONGLONG FileMftIndex;
    PB_TREE Tree;
    PINDEX_ROOT_ATTRIBUTE NewIndexRoot;
    ULONG MaxIndexRootSize;
    ULONG RootLength;

    FUNC6("NtfsCreateFileRecord(%p, %p, %s, %s)\n",
            DeviceExt,
            FileObject,
            CaseSensitive ? "TRUE" : "FALSE",
            CanWait ? "TRUE" : "FALSE");

    // Start with an empty file record
    FileRecord = FUNC13(DeviceExt);
    if (!FileRecord)
    {
        FUNC7("ERROR: Unable to allocate memory for file record!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // Set the directory flag
    FileRecord->Flags |= FRH_DIRECTORY;

    // find where the first attribute will be added
    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->AttributeOffset);

    // add first attribute, $STANDARD_INFORMATION
    FUNC3(FileRecord, NextAttribute);

    // advance NextAttribute pointer to the next attribute
    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute + (ULONG_PTR)NextAttribute->Length);

    // Add the $FILE_NAME attribute
    FUNC0(FileRecord, NextAttribute, DeviceExt, FileObject, CaseSensitive, &ParentMftIndex);

    // save a pointer to the filename attribute
    FilenameAttribute = (PFILENAME_ATTRIBUTE)((ULONG_PTR)NextAttribute + NextAttribute->Resident.ValueOffset);

    // advance NextAttribute pointer to the next attribute
    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute + (ULONG_PTR)NextAttribute->Length);

    // Create an empty b-tree to represent our new index
    Status = FUNC4(&Tree);
    if (!FUNC11(Status))
    {
        FUNC7("ERROR: Failed to create empty B-Tree!\n");
        FUNC10(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    // Calculate maximum size of index root
    MaxIndexRootSize = DeviceExt->NtfsInfo.BytesPerFileRecord 
                       - ((ULONG_PTR)NextAttribute - (ULONG_PTR)FileRecord)
                       - sizeof(ULONG) * 2;

    // Create a new index record from the tree
    Status = FUNC5(DeviceExt,
                                      Tree,
                                      MaxIndexRootSize,
                                      &NewIndexRoot,
                                      &RootLength);
    if (!FUNC11(Status))
    {
        FUNC7("ERROR: Unable to create empty index root!\n");
        FUNC8(Tree);
        FUNC10(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    // We're done with the B-Tree
    FUNC8(Tree);

    // add the $INDEX_ROOT attribute
    Status = FUNC1(DeviceExt, FileRecord, NextAttribute, NewIndexRoot, RootLength, L"$I30", 4);
    if (!FUNC11(Status))
    {
        FUNC7("ERROR: Failed to add index root to new file record!\n");
        FUNC9(NewIndexRoot, TAG_NTFS);
        FUNC10(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }


#ifndef NDEBUG
    FUNC14(DeviceExt, FileRecord);
#endif

    // Now that we've built the file record in memory, we need to store it in the MFT.
    Status = FUNC2(FileRecord, DeviceExt, &FileMftIndex, CanWait);
    if (FUNC11(Status))
    {
        // The highest 2 bytes should be the sequence number, unless the parent happens to be root
        if (FileMftIndex == NTFS_FILE_ROOT)
            FileMftIndex = FileMftIndex + ((ULONGLONG)NTFS_FILE_ROOT << 48);
        else
            FileMftIndex = FileMftIndex + ((ULONGLONG)FileRecord->SequenceNumber << 48);

        FUNC7("New File Reference: 0x%016I64x\n", FileMftIndex);

        // Add the filename attribute to the filename-index of the parent directory
        Status = FUNC12(DeviceExt,
                                            ParentMftIndex,
                                            FileMftIndex,
                                            FilenameAttribute,
                                            CaseSensitive);
    }

    FUNC9(NewIndexRoot, TAG_NTFS);
    FUNC10(&DeviceExt->FileRecLookasideList, FileRecord);

    return Status;
}