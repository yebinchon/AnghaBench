
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int state_file; int positions; int id; TYPE_1__* manager; scalar_t__ devices; int active; scalar_t__ sessions; scalar_t__ in_gc_queue; } ;
struct TYPE_8__ {int seats; int seat_gc_queue; } ;
typedef TYPE_2__ Seat ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (int) ;
 int device_free (scalar_t__) ;
 int free (int ) ;
 int gc_queue ;
 int hashmap_remove (int ,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int session_free (scalar_t__) ;

Seat* seat_free(Seat *s) {
        if (!s)
                return ((void*)0);

        if (s->in_gc_queue)
                LIST_REMOVE(gc_queue, s->manager->seat_gc_queue, s);

        while (s->sessions)
                session_free(s->sessions);

        assert(!s->active);

        while (s->devices)
                device_free(s->devices);

        hashmap_remove(s->manager->seats, s->id);

        free(s->positions);
        free(s->state_file);

        return mfree(s);
}
