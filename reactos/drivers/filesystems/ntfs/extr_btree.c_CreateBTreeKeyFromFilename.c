
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_11__ {int * NextKey; TYPE_3__* IndexEntry; } ;
struct TYPE_8__ {int IndexedFile; } ;
struct TYPE_9__ {TYPE_1__ Directory; } ;
struct TYPE_10__ {int Length; int KeyLength; int FileName; TYPE_2__ Data; } ;
typedef TYPE_3__* PINDEX_ENTRY_ATTRIBUTE ;
typedef int PFILENAME_ATTRIBUTE ;
typedef TYPE_4__* PB_TREE_KEY ;
typedef int B_TREE_KEY ;


 int ALIGN_UP_BY (int,int) ;
 int DPRINT1 (char*) ;
 void* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_3__*,int ) ;
 int FIELD_OFFSET (int ,int ) ;
 int FileName ;
 int GetFileNameAttributeLength (int ) ;
 int INDEX_ENTRY_ATTRIBUTE ;
 int NonPagedPool ;
 int RtlCopyMemory (int *,int ,int) ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int TAG_NTFS ;

PB_TREE_KEY
CreateBTreeKeyFromFilename(ULONGLONG FileReference, PFILENAME_ATTRIBUTE FileNameAttribute)
{
    PB_TREE_KEY NewKey;
    ULONG AttributeSize = GetFileNameAttributeLength(FileNameAttribute);
    ULONG EntrySize = ALIGN_UP_BY(AttributeSize + FIELD_OFFSET(INDEX_ENTRY_ATTRIBUTE, FileName), 8);


    PINDEX_ENTRY_ATTRIBUTE NewEntry = ExAllocatePoolWithTag(NonPagedPool, EntrySize, TAG_NTFS);
    if (!NewEntry)
    {
        DPRINT1("ERROR: Failed to allocate memory for Index Entry!\n");
        return ((void*)0);
    }


    RtlZeroMemory(NewEntry, EntrySize);
    NewEntry->Data.Directory.IndexedFile = FileReference;
    NewEntry->Length = EntrySize;
    NewEntry->KeyLength = AttributeSize;


    RtlCopyMemory(&NewEntry->FileName, FileNameAttribute, AttributeSize);


    NewKey = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
    if (!NewKey)
    {
        DPRINT1("ERROR: Failed to allocate memory for new key!\n");
        ExFreePoolWithTag(NewEntry, TAG_NTFS);
        return ((void*)0);
    }
    NewKey->IndexEntry = NewEntry;
    NewKey->NextKey = ((void*)0);

    return NewKey;
}
