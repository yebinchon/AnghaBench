
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xvattr_t ;
typedef int vtype_t ;
typedef int uid_t ;
typedef int cred_t ;


 int secpolicy_vnode_chown (int *,int ) ;

int
secpolicy_xvattr(xvattr_t *xvap, uid_t owner, cred_t *cr, vtype_t vtype)
{
 return (secpolicy_vnode_chown(cr, owner));
}
