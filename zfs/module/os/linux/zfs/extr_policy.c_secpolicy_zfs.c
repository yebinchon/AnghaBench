
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;


 int B_FALSE ;
 int CAP_SYS_ADMIN ;
 int EACCES ;
 int priv_policy (int const*,int ,int ,int ) ;

int
secpolicy_zfs(const cred_t *cr)
{
 return (priv_policy(cr, CAP_SYS_ADMIN, B_FALSE, EACCES));
}
