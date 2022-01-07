
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpecode; } ;


 TYPE_1__* msvcrt_get_thread_data () ;

int * __fpecode(void)
{
    return &msvcrt_get_thread_data()->fpecode;
}
