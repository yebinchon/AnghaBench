
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vattr {int dummy; } ;
struct inode {int dummy; } ;
typedef int cred_t ;



int
secpolicy_vnode_setattr(cred_t *cr, struct inode *ip, struct vattr *vap,
    const struct vattr *ovap, int flags,
    int unlocked_access(void *, int, cred_t *), void *node)
{
 return (0);
}
