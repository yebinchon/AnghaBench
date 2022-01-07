
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_ino; } ;
typedef int boolean_t ;


 scalar_t__ ZFSCTL_INO_SNAPDIRS ;
 scalar_t__ zfsctl_is_node (struct inode*) ;

boolean_t
zfsctl_is_snapdir(struct inode *ip)
{
 return (zfsctl_is_node(ip) && (ip->i_ino <= ZFSCTL_INO_SNAPDIRS));
}
