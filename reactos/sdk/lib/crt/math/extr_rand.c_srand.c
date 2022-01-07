
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int random_seed; } ;
typedef TYPE_1__ thread_data_t ;


 TYPE_1__* msvcrt_get_thread_data () ;

void
srand(unsigned int seed)
{
    thread_data_t *data = msvcrt_get_thread_data();
    data->random_seed = seed;
}
