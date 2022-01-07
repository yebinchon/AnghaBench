
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct inode {int dummy; } ;
struct TYPE_5__ {int user_ns; } ;
typedef TYPE_1__ cred_t ;


 int B_FALSE ;
 int CAP_DAC_OVERRIDE ;
 int CAP_DAC_READ_SEARCH ;
 int EPERM ;
 int SUID_TO_KUID (scalar_t__) ;
 scalar_t__ crgetfsuid (TYPE_1__ const*) ;
 scalar_t__ inode_owner_or_capable (struct inode*) ;
 int kuid_has_mapping (int ,int ) ;
 scalar_t__ priv_policy_user (TYPE_1__ const*,int ,int ,int) ;

int
secpolicy_vnode_any_access(const cred_t *cr, struct inode *ip, uid_t owner)
{
 if (crgetfsuid(cr) == owner)
  return (0);

 if (inode_owner_or_capable(ip))
  return (0);






 if (priv_policy_user(cr, CAP_DAC_OVERRIDE, B_FALSE, EPERM) == 0)
  return (0);

 if (priv_policy_user(cr, CAP_DAC_READ_SEARCH, B_FALSE, EPERM) == 0)
  return (0);

 return (EPERM);
}
