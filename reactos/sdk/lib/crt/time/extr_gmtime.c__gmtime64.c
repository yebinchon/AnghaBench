
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ time_buffer; } ;
typedef TYPE_1__ thread_data_t ;
struct tm {int dummy; } ;
typedef int __time64_t ;


 struct tm* _gmtime_worker (scalar_t__,int const,int ) ;
 scalar_t__ malloc (int) ;
 TYPE_1__* msvcrt_get_thread_data () ;

struct tm *
_gmtime64(const __time64_t * ptime)
{
    thread_data_t *data = msvcrt_get_thread_data();


    if (!ptime || *ptime < 0)
    {
        return ((void*)0);
    }

    if(!data->time_buffer)
        data->time_buffer = malloc(sizeof(struct tm));


    return _gmtime_worker(data->time_buffer, *ptime, 0);
}
