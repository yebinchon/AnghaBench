
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ fd; struct TYPE_8__* seat; struct TYPE_8__* name; int check_event_source; int io_event_source; TYPE_1__* manager; } ;
struct TYPE_7__ {int buttons; } ;
typedef TYPE_2__ Button ;


 int assert (TYPE_2__*) ;
 int close (scalar_t__) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,TYPE_2__*) ;
 int sd_event_source_unref (int ) ;

void button_free(Button *b) {
        assert(b);

        hashmap_remove(b->manager->buttons, b->name);

        sd_event_source_unref(b->io_event_source);
        sd_event_source_unref(b->check_event_source);

        if (b->fd >= 0)



                (void) close(b->fd);

        free(b->name);
        free(b->seat);
        free(b);
}
