
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {int gmtoff; } ;


 TYPE_1__* ngx_cached_time ;
 scalar_t__ ngx_time () ;
 int ngx_time_update () ;

__attribute__((used)) static time_t
ngx_pipe_get_now_sec()
{
    ngx_time_update();

    return ngx_time() + ngx_cached_time->gmtoff * 60;
}
