
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_7__ {int dd_lock; int dd_pool; struct TYPE_7__* dd_parent; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_8__ {scalar_t__ dd_quota; scalar_t__ dd_used_bytes; scalar_t__ dd_reserved; } ;


 int ASSERT (int) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ UINT64_MAX ;
 int ZFS_SPACE_CHECK_NORMAL ;
 TYPE_5__* dsl_dir_phys (TYPE_1__*) ;
 scalar_t__ dsl_dir_space_towrite (TYPE_1__*) ;
 scalar_t__ dsl_pool_adjustedsize (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

uint64_t
dsl_dir_space_available(dsl_dir_t *dd,
    dsl_dir_t *ancestor, int64_t delta, int ondiskonly)
{
 uint64_t parentspace, myspace, quota, used;





 quota = UINT64_MAX;
 parentspace = UINT64_MAX;

 if (dd->dd_parent != ((void*)0)) {
  parentspace = dsl_dir_space_available(dd->dd_parent,
      ancestor, delta, ondiskonly);
 }

 mutex_enter(&dd->dd_lock);
 if (dsl_dir_phys(dd)->dd_quota != 0)
  quota = dsl_dir_phys(dd)->dd_quota;
 used = dsl_dir_phys(dd)->dd_used_bytes;
 if (!ondiskonly)
  used += dsl_dir_space_towrite(dd);

 if (dd->dd_parent == ((void*)0)) {
  uint64_t poolsize = dsl_pool_adjustedsize(dd->dd_pool,
      ZFS_SPACE_CHECK_NORMAL);
  quota = MIN(quota, poolsize);
 }

 if (dsl_dir_phys(dd)->dd_reserved > used && parentspace != UINT64_MAX) {




  parentspace += dsl_dir_phys(dd)->dd_reserved - used;
 }

 if (dd == ancestor) {
  ASSERT(delta <= 0);
  ASSERT(used >= -delta);
  used += delta;
  if (parentspace != UINT64_MAX)
   parentspace -= delta;
 }

 if (used > quota) {

  myspace = 0;
 } else {




  myspace = MIN(parentspace, quota - used);
 }

 mutex_exit(&dd->dd_lock);

 return (myspace);
}
