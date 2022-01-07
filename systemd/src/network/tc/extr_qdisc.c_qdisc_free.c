
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ section; TYPE_1__* network; } ;
struct TYPE_5__ {int qdiscs_by_section; } ;
typedef TYPE_2__ QDiscs ;


 int free (TYPE_2__*) ;
 int network_config_section_free (scalar_t__) ;
 int ordered_hashmap_remove (int ,scalar_t__) ;

void qdisc_free(QDiscs *qdisc) {
        if (!qdisc)
                return;

        if (qdisc->network && qdisc->section)
                ordered_hashmap_remove(qdisc->network->qdiscs_by_section, qdisc->section);

        network_config_section_free(qdisc->section);

        free(qdisc);
}
