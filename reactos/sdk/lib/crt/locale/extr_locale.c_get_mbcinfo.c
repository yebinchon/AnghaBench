
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mbcinfo; int have_locale; } ;
typedef TYPE_1__ thread_data_t ;
struct TYPE_5__ {int mbcinfo; } ;
typedef int MSVCRT_pthreadmbcinfo ;


 TYPE_3__* MSVCRT_locale ;
 TYPE_1__* msvcrt_get_thread_data () ;

MSVCRT_pthreadmbcinfo get_mbcinfo(void) {
    thread_data_t *data = msvcrt_get_thread_data();

    if(!data || !data->have_locale)
        return MSVCRT_locale->mbcinfo;

    return data->mbcinfo;
}
