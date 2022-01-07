
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int lock; TYPE_4__* kstat; } ;
struct TYPE_9__ {TYPE_3__ iostats; } ;
struct TYPE_10__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef int spa_iostats_t ;
typedef TYPE_3__ spa_history_kstat_t ;
struct TYPE_12__ {int ks_data; int ks_update; TYPE_2__* ks_private; int * ks_lock; } ;
typedef TYPE_4__ kstat_t ;
typedef int kstat_named_t ;


 int KM_SLEEP ;
 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_TYPE_NAMED ;
 int MUTEX_DEFAULT ;
 int kmem_alloc (int,int ) ;
 char* kmem_asprintf (char*,int ) ;
 int kmem_strfree (char*) ;
 TYPE_4__* kstat_create (char*,int ,char*,char*,int ,int,int ) ;
 int kstat_install (TYPE_4__*) ;
 int memcpy (int ,int *,int) ;
 int mutex_init (int *,int *,int ,int *) ;
 int spa_iostats_template ;
 int spa_iostats_update ;
 int spa_name (TYPE_2__*) ;

__attribute__((used)) static void
spa_iostats_init(spa_t *spa)
{
 spa_history_kstat_t *shk = &spa->spa_stats.iostats;

 mutex_init(&shk->lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 char *name = kmem_asprintf("zfs/%s", spa_name(spa));
 kstat_t *ksp = kstat_create(name, 0, "iostats", "misc",
     KSTAT_TYPE_NAMED, sizeof (spa_iostats_t) / sizeof (kstat_named_t),
     KSTAT_FLAG_VIRTUAL);

 shk->kstat = ksp;
 if (ksp) {
  int size = sizeof (spa_iostats_t);
  ksp->ks_lock = &shk->lock;
  ksp->ks_private = spa;
  ksp->ks_update = spa_iostats_update;
  ksp->ks_data = kmem_alloc(size, KM_SLEEP);
  memcpy(ksp->ks_data, &spa_iostats_template, size);
  kstat_install(ksp);
 }

 kmem_strfree(name);
}
