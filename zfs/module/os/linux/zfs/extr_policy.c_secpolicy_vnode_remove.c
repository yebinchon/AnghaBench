
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;


 int B_FALSE ;
 int CAP_FOWNER ;
 int EPERM ;
 int priv_policy (int const*,int ,int ,int ) ;

int
secpolicy_vnode_remove(const cred_t *cr)
{
 return (priv_policy(cr, CAP_FOWNER, B_FALSE, EPERM));
}
