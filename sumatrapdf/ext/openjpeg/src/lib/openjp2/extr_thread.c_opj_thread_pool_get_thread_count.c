
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int worker_threads_count; } ;
typedef TYPE_1__ opj_thread_pool_t ;



int opj_thread_pool_get_thread_count(opj_thread_pool_t* tp)
{
    return tp->worker_threads_count;
}
