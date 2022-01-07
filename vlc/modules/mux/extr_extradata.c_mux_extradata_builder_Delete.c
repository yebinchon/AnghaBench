
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* pf_deinit ) (TYPE_2__*) ;} ;
struct TYPE_7__ {struct TYPE_7__* p_extra; TYPE_1__ cb; } ;
typedef TYPE_2__ mux_extradata_builder_t ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void mux_extradata_builder_Delete(mux_extradata_builder_t *m)
{
    if(m->cb.pf_deinit)
        m->cb.pf_deinit(m);
    free(m->p_extra);
    free(m);
}
