
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* floating; } ;
typedef TYPE_1__ sd_netlink_slot ;
struct TYPE_10__ {unsigned int rqueue_size; unsigned int rqueue_partial_size; int fd; int nlmsg_type_to_genl_family; int genl_family_to_nlmsg_type; int broadcast_group_refs; int event; int time_event_source; int io_event_source; int reply_callbacks_prioq; int reply_callbacks; TYPE_1__* slots; int * rbuffer; int * rqueue_partial; int * rqueue; } ;
typedef TYPE_2__ sd_netlink ;


 int assert (TYPE_2__*) ;
 int free (int *) ;
 int hashmap_free (int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int netlink_slot_disconnect (TYPE_1__*,int) ;
 int prioq_free (int ) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int sd_netlink_message_unref (int ) ;

__attribute__((used)) static sd_netlink *netlink_free(sd_netlink *rtnl) {
        sd_netlink_slot *s;
        unsigned i;

        assert(rtnl);

        for (i = 0; i < rtnl->rqueue_size; i++)
                sd_netlink_message_unref(rtnl->rqueue[i]);
        free(rtnl->rqueue);

        for (i = 0; i < rtnl->rqueue_partial_size; i++)
                sd_netlink_message_unref(rtnl->rqueue_partial[i]);
        free(rtnl->rqueue_partial);

        free(rtnl->rbuffer);

        while ((s = rtnl->slots)) {
                assert(s->floating);
                netlink_slot_disconnect(s, 1);
        }
        hashmap_free(rtnl->reply_callbacks);
        prioq_free(rtnl->reply_callbacks_prioq);

        sd_event_source_unref(rtnl->io_event_source);
        sd_event_source_unref(rtnl->time_event_source);
        sd_event_unref(rtnl->event);

        hashmap_free(rtnl->broadcast_group_refs);

        hashmap_free(rtnl->genl_family_to_nlmsg_type);
        hashmap_free(rtnl->nlmsg_type_to_genl_family);

        safe_close(rtnl->fd);
        return mfree(rtnl);
}
