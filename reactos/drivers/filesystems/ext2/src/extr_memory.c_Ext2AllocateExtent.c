
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Ext2ExtLookasideList; } ;
typedef int * PEXT2_EXTENT ;
typedef int EXT2_EXTENT ;


 scalar_t__ ExAllocateFromNPagedLookasideList (int *) ;
 TYPE_1__* Ext2Global ;
 int INC_MEM_COUNT (int ,int *,int) ;
 int PS_EXTENT ;
 int RtlZeroMemory (int *,int) ;

PEXT2_EXTENT
Ext2AllocateExtent ()
{
    PEXT2_EXTENT Extent;

    Extent = (PEXT2_EXTENT)ExAllocateFromNPagedLookasideList(
                 &(Ext2Global->Ext2ExtLookasideList));
    if (!Extent) {
        return ((void*)0);
    }

    RtlZeroMemory(Extent, sizeof(EXT2_EXTENT));
    INC_MEM_COUNT(PS_EXTENT, Extent, sizeof(EXT2_EXTENT));

    return Extent;
}
