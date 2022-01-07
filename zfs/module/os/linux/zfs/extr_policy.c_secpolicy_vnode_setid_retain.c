
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int CAP_FSETID ;
 int EPERM ;
 int priv_policy_user (int const*,int ,int ,int ) ;

int
secpolicy_vnode_setid_retain(const cred_t *cr, boolean_t issuidroot)
{
 return (priv_policy_user(cr, CAP_FSETID, B_FALSE, EPERM));
}
