
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int ms_weight; int ms_loaded; int ms_allocator; int ms_group; int ms_allocatable; int ms_primary; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 int EBUSY ;
 int ENOSPC ;
 int EQUIV (int,int ) ;
 int METASLAB_ACTIVE_MASK ;
 int METASLAB_WEIGHT_PRIMARY ;
 int MUTEX_HELD (int *) ;
 int SET_ERROR (int) ;
 int metaslab_activate_allocator (int ,TYPE_1__*,int,int) ;
 int metaslab_group_sort (int ,TYPE_1__*,int ) ;
 int metaslab_load (TYPE_1__*) ;
 int range_tree_space (int ) ;

__attribute__((used)) static int
metaslab_activate(metaslab_t *msp, int allocator, uint64_t activation_weight)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));
 if ((msp->ms_weight & METASLAB_ACTIVE_MASK) != 0) {
  ASSERT(msp->ms_loaded);
  return (0);
 }

 int error = metaslab_load(msp);
 if (error != 0) {
  metaslab_group_sort(msp->ms_group, msp, 0);
  return (error);
 }
 if ((msp->ms_weight & METASLAB_ACTIVE_MASK) != 0) {
  if (msp->ms_allocator != allocator)
   return (EBUSY);

  if ((msp->ms_weight & activation_weight) == 0)
   return (SET_ERROR(EBUSY));

  EQUIV((activation_weight == METASLAB_WEIGHT_PRIMARY),
      msp->ms_primary);
  return (0);
 }
 if (msp->ms_weight == 0) {
  ASSERT0(range_tree_space(msp->ms_allocatable));
  return (SET_ERROR(ENOSPC));
 }

 if ((error = metaslab_activate_allocator(msp->ms_group, msp,
     allocator, activation_weight)) != 0) {
  return (error);
 }

 ASSERT(msp->ms_loaded);
 ASSERT(msp->ms_weight & METASLAB_ACTIVE_MASK);

 return (0);
}
