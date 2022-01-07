
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_cycle_t ;


 int * event_index ;
 int ngx_free (int *) ;

__attribute__((used)) static void
ngx_select_done(ngx_cycle_t *cycle)
{
    ngx_free(event_index);

    event_index = ((void*)0);
}
