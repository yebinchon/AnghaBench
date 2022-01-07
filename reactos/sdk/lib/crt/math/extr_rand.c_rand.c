
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int random_seed; } ;
typedef TYPE_1__ thread_data_t ;


 int RAND_MAX ;
 TYPE_1__* msvcrt_get_thread_data () ;

int
rand(void)
{
    thread_data_t *data = msvcrt_get_thread_data();



    data->random_seed = data->random_seed * 214013 + 2531011;
    return (data->random_seed >> 16) & RAND_MAX;
}
