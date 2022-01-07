
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct group_info {scalar_t__ nblocks; int * blocks; int gid; } ;
typedef int gid_t ;
struct TYPE_3__ {struct group_info* group_info; } ;
typedef TYPE_1__ cred_t ;


 int * KGIDP_TO_SGIDP (int ) ;

gid_t *
crgetgroups(const cred_t *cr)
{
 struct group_info *gi;
 gid_t *gids = ((void*)0);

 gi = cr->group_info;



 if (gi->nblocks > 0)
  gids = KGIDP_TO_SGIDP(gi->blocks[0]);

 return (gids);
}
