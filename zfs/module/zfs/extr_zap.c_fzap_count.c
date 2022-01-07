
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zap_num_entries_mtx; } ;
struct TYPE_7__ {TYPE_1__ zap_f; int zap_ismicro; } ;
typedef TYPE_2__ zap_t ;
typedef int uint64_t ;
struct TYPE_8__ {int zap_num_entries; } ;


 int ASSERT (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_3__* zap_f_phys (TYPE_2__*) ;

int
fzap_count(zap_t *zap, uint64_t *count)
{
 ASSERT(!zap->zap_ismicro);
 mutex_enter(&zap->zap_f.zap_num_entries_mtx);
 *count = zap_f_phys(zap)->zap_num_entries;
 mutex_exit(&zap->zap_f.zap_num_entries_mtx);
 return (0);
}
