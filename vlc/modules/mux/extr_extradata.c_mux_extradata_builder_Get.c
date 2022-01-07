
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t i_extra; int * p_extra; } ;
typedef TYPE_1__ mux_extradata_builder_t ;



size_t mux_extradata_builder_Get(mux_extradata_builder_t *m, const uint8_t **a)
{
    *a = m->p_extra;
    return m->i_extra;
}
