
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ gid_t ;
struct TYPE_6__ {int user_ns; } ;
typedef TYPE_1__ cred_t ;


 int B_FALSE ;
 int CAP_FSETID ;
 int EPERM ;
 int SGID_TO_KGID (scalar_t__) ;
 scalar_t__ crgetfsgid (TYPE_1__ const*) ;
 int groupmember (scalar_t__,TYPE_1__ const*) ;
 int kgid_has_mapping (int ,int ) ;
 int priv_policy_user (TYPE_1__ const*,int ,int ,int) ;

int
secpolicy_vnode_setids_setgids(const cred_t *cr, gid_t gid)
{




 if (crgetfsgid(cr) != gid && !groupmember(gid, cr))
  return (priv_policy_user(cr, CAP_FSETID, B_FALSE, EPERM));

 return (0);
}
