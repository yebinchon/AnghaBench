
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int lock; TYPE_4__* kstat; } ;
struct TYPE_9__ {TYPE_3__ io_history; } ;
struct TYPE_10__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_history_kstat_t ;
struct TYPE_12__ {int ks_update; TYPE_2__* ks_private; int * ks_lock; } ;
typedef TYPE_4__ kstat_t ;


 int KSTAT_TYPE_IO ;
 int MUTEX_DEFAULT ;
 char* kmem_asprintf (char*,int ) ;
 int kmem_strfree (char*) ;
 TYPE_4__* kstat_create (char*,int ,char*,char*,int ,int,int ) ;
 int kstat_install (TYPE_4__*) ;
 int mutex_init (int *,int *,int ,int *) ;
 int spa_io_history_update ;
 int spa_name (TYPE_2__*) ;

__attribute__((used)) static void
spa_io_history_init(spa_t *spa)
{
 spa_history_kstat_t *shk = &spa->spa_stats.io_history;
 char *name;
 kstat_t *ksp;

 mutex_init(&shk->lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 name = kmem_asprintf("zfs/%s", spa_name(spa));

 ksp = kstat_create(name, 0, "io", "disk", KSTAT_TYPE_IO, 1, 0);
 shk->kstat = ksp;

 if (ksp) {
  ksp->ks_lock = &shk->lock;
  ksp->ks_private = spa;
  ksp->ks_update = spa_io_history_update;
  kstat_install(ksp);
 }
 kmem_strfree(name);
}
