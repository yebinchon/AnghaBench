
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int boolean_t ;
struct TYPE_2__ {int z_is_ctldir; } ;


 TYPE_1__* ITOZ (struct inode*) ;

boolean_t
zfsctl_is_node(struct inode *ip)
{
 return (ITOZ(ip)->z_is_ctldir);
}
