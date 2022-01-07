
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ n_ref; unsigned int n_containers; struct TYPE_7__* next; TYPE_1__* containers; struct TYPE_7__* hdr; } ;
typedef TYPE_2__ sd_netlink_message ;
struct TYPE_6__ {TYPE_2__* attributes; } ;


 int free (TYPE_2__*) ;

sd_netlink_message *sd_netlink_message_unref(sd_netlink_message *m) {
        while (m && --m->n_ref == 0) {
                unsigned i;

                free(m->hdr);

                for (i = 0; i <= m->n_containers; i++)
                        free(m->containers[i].attributes);

                sd_netlink_message *t = m;
                m = m->next;
                free(t);
        }

        return ((void*)0);
}
