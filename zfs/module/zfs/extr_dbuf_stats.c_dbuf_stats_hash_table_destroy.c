
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kstat_t ;
struct TYPE_3__ {int lock; int * kstat; } ;
typedef TYPE_1__ dbuf_stats_t ;


 TYPE_1__ dbuf_stats_hash_table ;
 int kstat_delete (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
dbuf_stats_hash_table_destroy(void)
{
 dbuf_stats_t *dsh = &dbuf_stats_hash_table;
 kstat_t *ksp;

 ksp = dsh->kstat;
 if (ksp)
  kstat_delete(ksp);

 mutex_destroy(&dsh->lock);
}
