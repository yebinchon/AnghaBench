
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_5__ {int user_ns; } ;
typedef TYPE_1__ cred_t ;


 int B_FALSE ;
 int CAP_FSETID ;
 int EPERM ;
 int SUID_TO_KUID (scalar_t__) ;
 scalar_t__ crgetfsuid (TYPE_1__ const*) ;
 int kuid_has_mapping (int ,int ) ;
 int priv_policy_user (TYPE_1__ const*,int ,int ,int) ;

__attribute__((used)) static int
secpolicy_vnode_setid_modify(const cred_t *cr, uid_t owner)
{
 if (crgetfsuid(cr) == owner)
  return (0);






 return (priv_policy_user(cr, CAP_FSETID, B_FALSE, EPERM));
}
