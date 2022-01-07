
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_cycle_t ;


 int ngx_free (int *) ;
 int * overflow_list ;

__attribute__((used)) static void
ngx_rtsig_done(ngx_cycle_t *cycle)
{
    ngx_free(overflow_list);

    overflow_list = ((void*)0);
}
