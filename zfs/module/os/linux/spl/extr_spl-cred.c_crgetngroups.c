
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct group_info {int ngroups; } ;
struct TYPE_3__ {struct group_info* group_info; } ;
typedef TYPE_1__ cred_t ;


 int NGROUPS_PER_BLOCK ;
 int WARN_ON_ONCE (int) ;

int
crgetngroups(const cred_t *cr)
{
 struct group_info *gi;
 int rc;

 gi = cr->group_info;
 rc = gi->ngroups;






 if (rc > NGROUPS_PER_BLOCK) {
  WARN_ON_ONCE(1);
  rc = NGROUPS_PER_BLOCK;
 }

 return (rc);
}
