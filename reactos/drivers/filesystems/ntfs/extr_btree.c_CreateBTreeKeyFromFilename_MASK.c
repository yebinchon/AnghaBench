#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  int ULONG ;
struct TYPE_11__ {int /*<<< orphan*/ * NextKey; TYPE_3__* IndexEntry; } ;
struct TYPE_8__ {int /*<<< orphan*/  IndexedFile; } ;
struct TYPE_9__ {TYPE_1__ Directory; } ;
struct TYPE_10__ {int Length; int KeyLength; int /*<<< orphan*/  FileName; TYPE_2__ Data; } ;
typedef  TYPE_3__* PINDEX_ENTRY_ATTRIBUTE ;
typedef  int /*<<< orphan*/  PFILENAME_ATTRIBUTE ;
typedef  TYPE_4__* PB_TREE_KEY ;
typedef  int /*<<< orphan*/  B_TREE_KEY ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FileName ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEX_ENTRY_ATTRIBUTE ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  TAG_NTFS ; 

PB_TREE_KEY
FUNC8(ULONGLONG FileReference, PFILENAME_ATTRIBUTE FileNameAttribute)
{
    PB_TREE_KEY NewKey;
    ULONG AttributeSize = FUNC5(FileNameAttribute);
    ULONG EntrySize = FUNC0(AttributeSize + FUNC4(INDEX_ENTRY_ATTRIBUTE, FileName), 8);

    // Create a new Index Entry for the file
    PINDEX_ENTRY_ATTRIBUTE NewEntry = FUNC2(NonPagedPool, EntrySize, TAG_NTFS);
    if (!NewEntry)
    {
        FUNC1("ERROR: Failed to allocate memory for Index Entry!\n");
        return NULL;
    }

    // Setup the Index Entry
    FUNC7(NewEntry, EntrySize);
    NewEntry->Data.Directory.IndexedFile = FileReference;
    NewEntry->Length = EntrySize;
    NewEntry->KeyLength = AttributeSize;

    // Copy the FileNameAttribute
    FUNC6(&NewEntry->FileName, FileNameAttribute, AttributeSize);

    // Setup the New Key
    NewKey = FUNC2(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
    if (!NewKey)
    {
        FUNC1("ERROR: Failed to allocate memory for new key!\n");
        FUNC3(NewEntry, TAG_NTFS);
        return NULL;
    }
    NewKey->IndexEntry = NewEntry;
    NewKey->NextKey = NULL;

    return NewKey;
}