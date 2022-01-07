
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* th_cpu; } ;
typedef TYPE_1__ txg_handle_t ;
struct TYPE_5__ {int tc_open_lock; int tc_lock; } ;
typedef TYPE_2__ tx_cpu_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int mutex_exit (int *) ;

void
txg_rele_to_quiesce(txg_handle_t *th)
{
 tx_cpu_t *tc = th->th_cpu;

 ASSERT(!MUTEX_HELD(&tc->tc_lock));
 mutex_exit(&tc->tc_open_lock);
}
