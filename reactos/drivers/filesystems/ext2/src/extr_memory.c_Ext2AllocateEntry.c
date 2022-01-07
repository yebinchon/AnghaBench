
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int Ext2DentryLookasideList; } ;


 scalar_t__ ExAllocateFromNPagedLookasideList (int *) ;
 TYPE_1__* Ext2Global ;
 int INC_MEM_COUNT (int ,struct dentry*,int) ;
 int PS_DENTRY ;
 int RtlZeroMemory (struct dentry*,int) ;

struct dentry * Ext2AllocateEntry()
{
    struct dentry *de;

    de = (struct dentry *)ExAllocateFromNPagedLookasideList(
             &(Ext2Global->Ext2DentryLookasideList));
    if (!de) {
        return ((void*)0);
    }

    RtlZeroMemory(de, sizeof(struct dentry));
    INC_MEM_COUNT(PS_DENTRY, de, sizeof(struct dentry));

    return de;
}
