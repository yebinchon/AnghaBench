
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; scalar_t__ error; int * list; } ;
typedef TYPE_1__ minors_job_t ;
typedef int list_t ;


 int ASSERT0 (int ) ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int TQ_SLEEP ;
 int dprintf (char*,char const*) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 char* kmem_strdup (char const*) ;
 int list_insert_tail (int *,TYPE_1__*) ;
 int spa_namespace_lock ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int system_taskq ;
 int taskq_dispatch (int ,int ,TYPE_1__*,int ) ;
 int zvol_prefetch_minors_impl ;

__attribute__((used)) static int
zvol_create_snap_minor_cb(const char *dsname, void *arg)
{
 minors_job_t *j = arg;
 list_t *minors_list = j->list;
 const char *name = j->name;

 ASSERT0(MUTEX_HELD(&spa_namespace_lock));


 if (name && strcmp(dsname, name) == 0)
  return (0);


 if (strchr(dsname, '@') == 0) {
  dprintf("zvol_create_snap_minor_cb(): "
      "%s is not a snapshot name\n", dsname);
 } else {
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
 }

 return (0);
}
