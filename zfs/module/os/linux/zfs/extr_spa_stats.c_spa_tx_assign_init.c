
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_longlong_t ;
struct TYPE_14__ {int count; int size; scalar_t__ private; int lock; TYPE_5__* kstat; } ;
struct TYPE_11__ {TYPE_4__ tx_assign_histogram; } ;
struct TYPE_13__ {TYPE_1__ spa_stats; } ;
typedef TYPE_3__ spa_t ;
typedef TYPE_4__ spa_history_kstat_t ;
struct TYPE_15__ {int ks_ndata; int ks_data_size; int ks_update; TYPE_3__* ks_private; scalar_t__ ks_data; int * ks_lock; } ;
typedef TYPE_5__ kstat_t ;
struct TYPE_12__ {scalar_t__ ui64; } ;
struct TYPE_16__ {int name; TYPE_2__ value; int data_type; } ;
typedef TYPE_6__ kstat_named_t ;


 int KM_SLEEP ;
 int KSTAT_DATA_UINT64 ;
 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_STRLEN ;
 int KSTAT_TYPE_NAMED ;
 int MUTEX_DEFAULT ;
 scalar_t__ kmem_alloc (int,int ) ;
 char* kmem_asprintf (char*,int ) ;
 int kmem_strfree (char*) ;
 TYPE_5__* kstat_create (char*,int ,char*,char*,int ,int ,int ) ;
 int kstat_install (TYPE_5__*) ;
 int mutex_init (int *,int *,int ,int *) ;
 int snprintf (int ,int ,char*,int) ;
 int spa_name (TYPE_3__*) ;
 int spa_tx_assign_update ;

__attribute__((used)) static void
spa_tx_assign_init(spa_t *spa)
{
 spa_history_kstat_t *shk = &spa->spa_stats.tx_assign_histogram;
 char *name;
 kstat_named_t *ks;
 kstat_t *ksp;
 int i;

 mutex_init(&shk->lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 shk->count = 42;
 shk->size = shk->count * sizeof (kstat_named_t);
 shk->private = kmem_alloc(shk->size, KM_SLEEP);

 name = kmem_asprintf("zfs/%s", spa_name(spa));

 for (i = 0; i < shk->count; i++) {
  ks = &((kstat_named_t *)shk->private)[i];
  ks->data_type = KSTAT_DATA_UINT64;
  ks->value.ui64 = 0;
  (void) snprintf(ks->name, KSTAT_STRLEN, "%llu ns",
      (u_longlong_t)1 << i);
 }

 ksp = kstat_create(name, 0, "dmu_tx_assign", "misc",
     KSTAT_TYPE_NAMED, 0, KSTAT_FLAG_VIRTUAL);
 shk->kstat = ksp;

 if (ksp) {
  ksp->ks_lock = &shk->lock;
  ksp->ks_data = shk->private;
  ksp->ks_ndata = shk->count;
  ksp->ks_data_size = shk->size;
  ksp->ks_private = spa;
  ksp->ks_update = spa_tx_assign_update;
  kstat_install(ksp);
 }
 kmem_strfree(name);
}
