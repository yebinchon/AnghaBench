
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;


 int B_FALSE ;
 int CAP_SETGID ;
 int EPERM ;
 int priv_policy (int const*,int ,int ,int ) ;

int
secpolicy_vnode_create_gid(const cred_t *cr)
{
 return (priv_policy(cr, CAP_SETGID, B_FALSE, EPERM));
}
