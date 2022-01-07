
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_5__ {int ngx_tm_year; int ngx_tm_mon; } ;
typedef TYPE_1__ ngx_tm_t ;


 TYPE_1__* localtime (int *) ;
 int localtime_r (int *,TYPE_1__*) ;

void
ngx_localtime(time_t s, ngx_tm_t *tm)
{




    ngx_tm_t *t;

    t = localtime(&s);
    *tm = *t;



    tm->ngx_tm_mon++;
    tm->ngx_tm_year += 1900;
}
