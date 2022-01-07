
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ks_private; int ks_ndata; int * ks_lock; } ;
typedef TYPE_1__ kstat_t ;
struct TYPE_8__ {int lock; TYPE_1__* kstat; int * hash; } ;
typedef TYPE_2__ dbuf_stats_t ;
typedef int dbuf_hash_table_t ;


 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_TYPE_RAW ;
 int MUTEX_DEFAULT ;
 int UINT32_MAX ;
 TYPE_2__ dbuf_stats_hash_table ;
 int dbuf_stats_hash_table_addr ;
 int dbuf_stats_hash_table_data ;
 int dbuf_stats_hash_table_headers ;
 TYPE_1__* kstat_create (char*,int ,char*,char*,int ,int ,int ) ;
 int kstat_install (TYPE_1__*) ;
 int kstat_set_raw_ops (TYPE_1__*,int ,int ,int ) ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static void
dbuf_stats_hash_table_init(dbuf_hash_table_t *hash)
{
 dbuf_stats_t *dsh = &dbuf_stats_hash_table;
 kstat_t *ksp;

 mutex_init(&dsh->lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 dsh->hash = hash;

 ksp = kstat_create("zfs", 0, "dbufs", "misc",
     KSTAT_TYPE_RAW, 0, KSTAT_FLAG_VIRTUAL);
 dsh->kstat = ksp;

 if (ksp) {
  ksp->ks_lock = &dsh->lock;
  ksp->ks_ndata = UINT32_MAX;
  ksp->ks_private = dsh;
  kstat_set_raw_ops(ksp, dbuf_stats_hash_table_headers,
      dbuf_stats_hash_table_data, dbuf_stats_hash_table_addr);
  kstat_install(ksp);
 }
}
