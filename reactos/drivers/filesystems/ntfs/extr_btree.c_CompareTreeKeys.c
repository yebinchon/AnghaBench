
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int Length; int MaximumLength; int Buffer; } ;
typedef TYPE_3__ UNICODE_STRING ;
struct TYPE_12__ {TYPE_2__* IndexEntry; int * NextKey; } ;
struct TYPE_9__ {int NameLength; int Name; } ;
struct TYPE_10__ {int Flags; TYPE_1__ FileName; } ;
typedef TYPE_4__* PB_TREE_KEY ;
typedef int LONG ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 int NTFS_INDEX_ENTRY_END ;
 int RtlCompareUnicodeString (TYPE_3__*,TYPE_3__*,int) ;

LONG
CompareTreeKeys(PB_TREE_KEY Key1, PB_TREE_KEY Key2, BOOLEAN CaseSensitive)
{
    UNICODE_STRING Key1Name, Key2Name;
    LONG Comparison;


    ASSERT(!(Key1->IndexEntry->Flags & NTFS_INDEX_ENTRY_END));


    if (Key2->NextKey == ((void*)0))
        return -1;

    Key1Name.Buffer = Key1->IndexEntry->FileName.Name;
    Key1Name.Length = Key1Name.MaximumLength
        = Key1->IndexEntry->FileName.NameLength * sizeof(WCHAR);

    Key2Name.Buffer = Key2->IndexEntry->FileName.Name;
    Key2Name.Length = Key2Name.MaximumLength
        = Key2->IndexEntry->FileName.NameLength * sizeof(WCHAR);


    if (Key1Name.Length == Key2Name.Length)
        return RtlCompareUnicodeString(&Key1Name, &Key2Name, !CaseSensitive);


    if (Key1Name.Length < Key2Name.Length)
    {

        Key2Name.Length = Key1Name.Length;


        Comparison = RtlCompareUnicodeString(&Key1Name, &Key2Name, !CaseSensitive);


        if (Comparison == 0)
            return -1;
    }
    else
    {


        Key1Name.Length = Key2Name.Length;


        Comparison = RtlCompareUnicodeString(&Key1Name, &Key2Name, !CaseSensitive);


        if (Comparison == 0)
            return 1;
    }

    return Comparison;
}
