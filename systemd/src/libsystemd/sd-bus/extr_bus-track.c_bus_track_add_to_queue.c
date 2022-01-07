
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int in_queue; scalar_t__ n_adding; TYPE_1__* bus; int in_list; int handler; int names; } ;
typedef TYPE_2__ sd_bus_track ;
struct TYPE_6__ {int track_queue; } ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 scalar_t__ hashmap_size (int ) ;
 int queue ;

__attribute__((used)) static void bus_track_add_to_queue(sd_bus_track *track) {
        assert(track);





        if (track->in_queue)
                return;



        if (track->n_adding > 0)
                return;


        if (hashmap_size(track->names) > 0)
                return;


        if (!track->handler)
                return;


        if (!track->in_list)
                return;

        LIST_PREPEND(queue, track->bus->track_queue, track);
        track->in_queue = 1;
}
