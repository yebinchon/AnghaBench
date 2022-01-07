
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ sd_bus ;


 int BUS_AUTHENTICATING ;
 int BUS_OPENING ;
 int BUS_WATCH_BIND ;
 int CLOCK_MONOTONIC ;
 scalar_t__ IN_SET (int ,int ,int ,int ) ;
 int assert (TYPE_1__*) ;
 scalar_t__ now (int ) ;

__attribute__((used)) static usec_t calc_elapse(sd_bus *bus, uint64_t usec) {
        assert(bus);

        if (usec == (uint64_t) -1)
                return 0;





        if (IN_SET(bus->state, BUS_WATCH_BIND, BUS_OPENING, BUS_AUTHENTICATING))
                return usec;
        else
                return now(CLOCK_MONOTONIC) + usec;
}
