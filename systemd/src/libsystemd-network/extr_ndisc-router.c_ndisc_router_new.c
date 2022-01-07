
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t raw_size; int n_ref; } ;
typedef TYPE_1__ sd_ndisc_router ;


 scalar_t__ ALIGN (int) ;
 TYPE_1__* malloc0 (scalar_t__) ;

sd_ndisc_router *ndisc_router_new(size_t raw_size) {
        sd_ndisc_router *rt;

        rt = malloc0(ALIGN(sizeof(sd_ndisc_router)) + raw_size);
        if (!rt)
                return ((void*)0);

        rt->raw_size = raw_size;
        rt->n_ref = 1;

        return rt;
}
