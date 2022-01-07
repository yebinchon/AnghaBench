
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ bus_track; TYPE_2__* unit; } ;
struct TYPE_8__ {TYPE_1__* manager; } ;
struct TYPE_7__ {int api_bus; } ;
typedef TYPE_3__ Job ;


 int assert (TYPE_3__*) ;
 int bus_job_track_handler ;
 int sd_bus_track_new (int ,scalar_t__*,int ,TYPE_3__*) ;

__attribute__((used)) static int bus_job_allocate_bus_track(Job *j) {

        assert(j);

        if (j->bus_track)
                return 0;

        return sd_bus_track_new(j->unit->manager->api_bus, &j->bus_track, bus_job_track_handler, j);
}
