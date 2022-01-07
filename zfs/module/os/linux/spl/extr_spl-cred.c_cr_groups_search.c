
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {unsigned int ngroups; } ;
typedef int kgid_t ;


 int GROUP_AT (struct group_info const*,unsigned int) ;
 int KGID_TO_SGID (int ) ;

__attribute__((used)) static int
cr_groups_search(const struct group_info *group_info, kgid_t grp)
{
 unsigned int left, right, mid;
 int cmp;

 if (!group_info)
  return (0);

 left = 0;
 right = group_info->ngroups;
 while (left < right) {
  mid = (left + right) / 2;
  cmp = KGID_TO_SGID(grp) -
      KGID_TO_SGID(GROUP_AT(group_info, mid));

  if (cmp > 0)
   left = mid + 1;
  else if (cmp < 0)
   right = mid;
  else
   return (1);
 }
 return (0);
}
