
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int (* pf_feed ) (TYPE_2__*,int const*,size_t) ;} ;
struct TYPE_6__ {TYPE_1__ cb; } ;
typedef TYPE_2__ mux_extradata_builder_t ;


 int stub1 (TYPE_2__*,int const*,size_t) ;

void mux_extradata_builder_Feed(mux_extradata_builder_t *m,
                                const uint8_t *p_data, size_t i_data)
{
    m->cb.pf_feed(m, p_data, i_data);
}
