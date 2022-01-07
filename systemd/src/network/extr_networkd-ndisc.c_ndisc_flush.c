
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ndisc_dnssl; void* ndisc_rdnss; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 void* set_free_free (void*) ;

void ndisc_flush(Link *link) {
        assert(link);



        link->ndisc_rdnss = set_free_free(link->ndisc_rdnss);
        link->ndisc_dnssl = set_free_free(link->ndisc_dnssl);
}
