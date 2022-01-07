
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ realtime; scalar_t__ monotonic; scalar_t__ attach_timestamp; } ;
typedef TYPE_1__ sd_bus_message ;
typedef TYPE_1__ sd_bus ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int assert (TYPE_1__*) ;
 void* now (int ) ;
 int sd_bus_message_seal (TYPE_1__*,int,int ) ;

int bus_seal_synthetic_message(sd_bus *b, sd_bus_message *m) {
        assert(b);
        assert(m);



        if (b->attach_timestamp) {
                if (m->realtime <= 0)
                        m->realtime = now(CLOCK_REALTIME);

                if (m->monotonic <= 0)
                        m->monotonic = now(CLOCK_MONOTONIC);
        }
        return sd_bus_message_seal(m, 0xFFFFFFFFULL, 0);
}
