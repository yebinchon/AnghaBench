
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct write_queue_item {int dummy; } ;
struct TYPE_4__ {int rfkill_fd; struct write_queue_item* write_queue; } ;
typedef TYPE_1__ Context ;


 int LIST_REMOVE (int ,struct write_queue_item*,struct write_queue_item*) ;
 int assert (TYPE_1__*) ;
 int queue ;
 int safe_close (int ) ;
 int save_state_write_one (struct write_queue_item*) ;
 int write_queue_item_free (struct write_queue_item*) ;

__attribute__((used)) static void context_save_and_clear(Context *c) {
        struct write_queue_item *i;

        assert(c);

        while ((i = c->write_queue)) {
                LIST_REMOVE(queue, c->write_queue, i);
                (void) save_state_write_one(i);
                write_queue_item_free(i);
        }

        safe_close(c->rfkill_fd);
}
