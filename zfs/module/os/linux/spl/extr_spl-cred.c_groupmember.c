
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct group_info {int dummy; } ;
typedef int gid_t ;
struct TYPE_3__ {struct group_info* group_info; } ;
typedef TYPE_1__ cred_t ;


 int SGID_TO_KGID (int ) ;
 int cr_groups_search (struct group_info*,int ) ;

int
groupmember(gid_t gid, const cred_t *cr)
{
 struct group_info *gi;
 int rc;

 gi = cr->group_info;
 rc = cr_groups_search(gi, SGID_TO_KGID(gid));

 return (rc);
}
