
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int lock; TYPE_4__* kstat; } ;
struct TYPE_10__ {TYPE_3__ state; } ;
struct TYPE_11__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_history_kstat_t ;
struct TYPE_13__ {int ks_flags; TYPE_2__* ks_private; int * ks_data; int * ks_lock; } ;
typedef TYPE_4__ kstat_t ;


 int KSTAT_FLAG_NO_HEADERS ;
 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_TYPE_RAW ;
 int MUTEX_DEFAULT ;
 char* kmem_asprintf (char*,int ) ;
 int kmem_strfree (char*) ;
 TYPE_4__* kstat_create (char*,int ,char*,char*,int ,int ,int ) ;
 int kstat_install (TYPE_4__*) ;
 int kstat_set_raw_ops (TYPE_4__*,int *,int ,int ) ;
 int mutex_init (int *,int *,int ,int *) ;
 int spa_name (TYPE_2__*) ;
 int spa_state_addr ;
 int spa_state_data ;

__attribute__((used)) static void
spa_state_init(spa_t *spa)
{
 spa_history_kstat_t *shk = &spa->spa_stats.state;
 char *name;
 kstat_t *ksp;

 mutex_init(&shk->lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 name = kmem_asprintf("zfs/%s", spa_name(spa));
 ksp = kstat_create(name, 0, "state", "misc",
     KSTAT_TYPE_RAW, 0, KSTAT_FLAG_VIRTUAL);

 shk->kstat = ksp;
 if (ksp) {
  ksp->ks_lock = &shk->lock;
  ksp->ks_data = ((void*)0);
  ksp->ks_private = spa;
  ksp->ks_flags |= KSTAT_FLAG_NO_HEADERS;
  kstat_set_raw_ops(ksp, ((void*)0), spa_state_data, spa_state_addr);
  kstat_install(ksp);
 }

 kmem_strfree(name);
}
