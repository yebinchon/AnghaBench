
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
typedef int ULONGLONG ;
struct TYPE_3__ {int Flags; scalar_t__ Length; } ;
typedef int * PULONGLONG ;
typedef TYPE_1__* PINDEX_ENTRY_ATTRIBUTE ;


 int ASSERT (int) ;
 int NTFS_INDEX_ENTRY_NODE ;

VOID
SetIndexEntryVCN(PINDEX_ENTRY_ATTRIBUTE IndexEntry, ULONGLONG VCN)
{
    PULONGLONG Destination = (PULONGLONG)((ULONG_PTR)IndexEntry + IndexEntry->Length - sizeof(ULONGLONG));

    ASSERT(IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE);

    *Destination = VCN;
}
