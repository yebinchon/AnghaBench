
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_priv; } ;
typedef int PEXT2_VCB ;


 int Ext2FlushVolume (int *,int ,int ) ;
 int FALSE ;

int sync_blockdev(struct block_device *bdev)
{
    PEXT2_VCB Vcb = (PEXT2_VCB) bdev->bd_priv;
    Ext2FlushVolume(((void*)0), Vcb, FALSE);
    return 0;
}
