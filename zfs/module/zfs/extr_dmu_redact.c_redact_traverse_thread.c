
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct redact_thread_arg {int error_code; int current_record; int q; void* deleted_objs; int resume; int txg; int ds; } ;
struct redact_record {int eos_marker; } ;
struct TYPE_6__ {TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_5__ {scalar_t__ os_type; } ;


 int B_TRUE ;
 scalar_t__ DMU_OST_ZFS ;
 int EINTR ;
 int KM_SLEEP ;
 int TRAVERSE_PRE ;
 int TRAVERSE_PREFETCH_METADATA ;
 int VERIFY0 (int ) ;
 int dmu_objset_from_ds (int ,TYPE_2__**) ;
 struct redact_record* kmem_zalloc (int,int ) ;
 void* objlist_create () ;
 int objlist_destroy (void*) ;
 int record_merge_enqueue (int *,int *,struct redact_record*) ;
 int redact_cb ;
 int thread_exit () ;
 int traverse_dataset_resume (int ,int ,int *,int,int ,struct redact_thread_arg*) ;
 void* zfs_get_deleteq (TYPE_2__*) ;

__attribute__((used)) static void
redact_traverse_thread(void *arg)
{
 struct redact_thread_arg *rt_arg = arg;
 int err;
 struct redact_record *data;
 objset_t *os;
 VERIFY0(dmu_objset_from_ds(rt_arg->ds, &os));






 rt_arg->deleted_objs = objlist_create();


 err = traverse_dataset_resume(rt_arg->ds, rt_arg->txg,
     &rt_arg->resume, TRAVERSE_PRE | TRAVERSE_PREFETCH_METADATA,
     redact_cb, rt_arg);

 if (err != EINTR)
  rt_arg->error_code = err;
 objlist_destroy(rt_arg->deleted_objs);
 data = kmem_zalloc(sizeof (*data), KM_SLEEP);
 data->eos_marker = B_TRUE;
 record_merge_enqueue(&rt_arg->q, &rt_arg->current_record, data);
 thread_exit();
}
