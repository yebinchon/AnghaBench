
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {char* name; scalar_t__ error; int * list; } ;
typedef TYPE_1__ minors_job_t ;
typedef int list_t ;


 int ASSERT0 (int ) ;
 int DS_FIND_SNAPSHOTS ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int TQ_SLEEP ;
 scalar_t__ ZFS_SNAPDEV_VISIBLE ;
 int dmu_objset_find (char const*,int ,void*,int ) ;
 int dprintf (char*,char const*) ;
 int dsl_prop_get_integer (char const*,char*,scalar_t__*,int *) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 char* kmem_strdup (char const*) ;
 int list_insert_tail (int *,TYPE_1__*) ;
 int spa_namespace_lock ;
 scalar_t__ strchr (char const*,char) ;
 int system_taskq ;
 int taskq_dispatch (int ,int ,TYPE_1__*,int ) ;
 int zvol_create_snap_minor_cb ;
 int zvol_prefetch_minors_impl ;

__attribute__((used)) static int
zvol_create_minors_cb(const char *dsname, void *arg)
{
 uint64_t snapdev;
 int error;
 list_t *minors_list = arg;

 ASSERT0(MUTEX_HELD(&spa_namespace_lock));

 error = dsl_prop_get_integer(dsname, "snapdev", &snapdev, ((void*)0));
 if (error)
  return (0);
 if (strchr(dsname, '@') == 0) {
  minors_job_t *job;
  char *n = kmem_strdup(dsname);
  if (n == ((void*)0))
   return (0);

  job = kmem_alloc(sizeof (minors_job_t), KM_SLEEP);
  job->name = n;
  job->list = minors_list;
  job->error = 0;
  list_insert_tail(minors_list, job);

  taskq_dispatch(system_taskq, zvol_prefetch_minors_impl, job,
      TQ_SLEEP);

  if (snapdev == ZFS_SNAPDEV_VISIBLE) {




   error = dmu_objset_find(dsname,
       zvol_create_snap_minor_cb, (void *)job,
       DS_FIND_SNAPSHOTS);
  }
 } else {
  dprintf("zvol_create_minors_cb(): %s is not a zvol name\n",
      dsname);
 }

 return (0);
}
