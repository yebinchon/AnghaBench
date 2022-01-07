
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uqc_project_deltas; int uqc_group_deltas; int uqc_user_deltas; } ;
typedef TYPE_1__ userquota_cache_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int longlong_t ;
typedef int int64_t ;
typedef scalar_t__ boolean_t ;


 int DNODE_FLAG_USERUSED_ACCOUNTED ;
 int DNODE_MIN_SIZE ;
 scalar_t__ dmu_objset_projectquota_enabled (int *) ;
 int sprintf (char*,char*,int ) ;
 int userquota_update_cache (int *,char*,int) ;

__attribute__((used)) static void
do_userquota_update(objset_t *os, userquota_cache_t *cache, uint64_t used,
    uint64_t flags, uint64_t user, uint64_t group, uint64_t project,
    boolean_t subtract)
{
 if (flags & DNODE_FLAG_USERUSED_ACCOUNTED) {
  int64_t delta = DNODE_MIN_SIZE + used;
  char name[20];

  if (subtract)
   delta = -delta;

  (void) sprintf(name, "%llx", (longlong_t)user);
  userquota_update_cache(&cache->uqc_user_deltas, name, delta);

  (void) sprintf(name, "%llx", (longlong_t)group);
  userquota_update_cache(&cache->uqc_group_deltas, name, delta);

  if (dmu_objset_projectquota_enabled(os)) {
   (void) sprintf(name, "%llx", (longlong_t)project);
   userquota_update_cache(&cache->uqc_project_deltas,
       name, delta);
  }
 }
}
