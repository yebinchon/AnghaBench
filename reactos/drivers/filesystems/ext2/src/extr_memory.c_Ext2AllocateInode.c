
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int InodeLookasideList; } ;
typedef int * PVOID ;
typedef TYPE_1__* PEXT2_VCB ;
typedef int * PEXT2_INODE ;


 int DEBUG (int ,char*) ;
 int DL_INF ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int INC_MEM_COUNT (int ,int *,int ) ;
 int INODE_SIZE ;
 int PS_EXT2_INODE ;
 int RtlZeroMemory (int *,int ) ;

PEXT2_INODE
Ext2AllocateInode (PEXT2_VCB Vcb)
{
    PVOID inode = ((void*)0);

    inode = ExAllocateFromNPagedLookasideList(
                &(Vcb->InodeLookasideList));
    if (!inode) {
        return ((void*)0);
    }

    RtlZeroMemory(inode, INODE_SIZE);

    DEBUG(DL_INF, ("ExtAllocateInode: Inode created: %ph.\n", inode));
    INC_MEM_COUNT(PS_EXT2_INODE, inode, INODE_SIZE);

    return inode;
}
