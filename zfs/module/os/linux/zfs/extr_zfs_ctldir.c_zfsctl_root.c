
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int znode_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* z_ctldir; } ;


 int ASSERT (int ) ;
 TYPE_1__* ZTOZSB (int *) ;
 int igrab (struct inode*) ;
 int zfs_has_ctldir (int *) ;

struct inode *
zfsctl_root(znode_t *zp)
{
 ASSERT(zfs_has_ctldir(zp));
 igrab(ZTOZSB(zp)->z_ctldir);
 return (ZTOZSB(zp)->z_ctldir);
}
