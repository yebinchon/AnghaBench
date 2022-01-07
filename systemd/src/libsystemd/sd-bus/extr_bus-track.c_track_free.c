
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int userdata; int (* destroy_callback ) (int ) ;TYPE_4__* bus; int names; scalar_t__ in_list; } ;
typedef TYPE_1__ sd_bus_track ;
struct TYPE_12__ {int tracks; } ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_track_remove_from_queue (TYPE_1__*) ;
 int hashmap_free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 TYPE_4__* sd_bus_unref (TYPE_4__*) ;
 int stub1 (int ) ;
 int tracks ;

__attribute__((used)) static sd_bus_track *track_free(sd_bus_track *track) {
        assert(track);

        if (track->in_list)
                LIST_REMOVE(tracks, track->bus->tracks, track);

        bus_track_remove_from_queue(track);
        track->names = hashmap_free(track->names);
        track->bus = sd_bus_unref(track->bus);

        if (track->destroy_callback)
                track->destroy_callback(track->userdata);

        return mfree(track);
}
