
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t rqueue_size; size_t wqueue_size; scalar_t__ wqueue_allocated; int * wqueue; scalar_t__ rqueue_allocated; int * rqueue; } ;
typedef TYPE_1__ sd_bus ;


 int assert (TYPE_1__*) ;
 int bus_message_unref_queued (int ,TYPE_1__*) ;
 void* mfree (int *) ;

__attribute__((used)) static void bus_reset_queues(sd_bus *b) {
        assert(b);

        while (b->rqueue_size > 0)
                bus_message_unref_queued(b->rqueue[--b->rqueue_size], b);

        b->rqueue = mfree(b->rqueue);
        b->rqueue_allocated = 0;

        while (b->wqueue_size > 0)
                bus_message_unref_queued(b->wqueue[--b->wqueue_size], b);

        b->wqueue = mfree(b->wqueue);
        b->wqueue_allocated = 0;
}
