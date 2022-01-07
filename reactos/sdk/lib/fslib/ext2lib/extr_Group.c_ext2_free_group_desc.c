
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * group_desc; } ;
typedef TYPE_1__* PEXT2_FILESYS ;


 int RtlFreeHeap (int ,int ,int *) ;
 int RtlGetProcessHeap () ;

void ext2_free_group_desc(PEXT2_FILESYS Ext2Sys)
{
    if (Ext2Sys->group_desc)
    {
        RtlFreeHeap(RtlGetProcessHeap(), 0, Ext2Sys->group_desc);
        Ext2Sys->group_desc = ((void*)0);
    }
}
