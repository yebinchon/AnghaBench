
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_cycle_t ;


 int * event_list ;
 int ngx_free (int *) ;

__attribute__((used)) static void
ngx_poll_done(ngx_cycle_t *cycle)
{
    ngx_free(event_list);

    event_list = ((void*)0);
}
