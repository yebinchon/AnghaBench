
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bus_track; } ;
typedef TYPE_1__ sd_bus_track ;
typedef TYPE_1__ Job ;


 int assert (TYPE_1__*) ;
 int job_add_to_gc_queue (TYPE_1__*) ;
 int sd_bus_track_unref (int ) ;

__attribute__((used)) static int bus_job_track_handler(sd_bus_track *t, void *userdata) {
        Job *j = userdata;

        assert(t);
        assert(j);

        j->bus_track = sd_bus_track_unref(j->bus_track);


        job_add_to_gc_queue(j);
        return 0;
}
