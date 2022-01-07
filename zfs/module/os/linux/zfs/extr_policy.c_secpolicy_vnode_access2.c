
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct inode {int dummy; } ;
typedef int mode_t ;
typedef int cred_t ;



int
secpolicy_vnode_access2(const cred_t *cr, struct inode *ip, uid_t owner,
    mode_t curmode, mode_t wantmode)
{
 return (0);
}
