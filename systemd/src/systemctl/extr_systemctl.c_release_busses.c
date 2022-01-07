
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t BusFocus ;


 size_t _BUS_FOCUS_MAX ;
 int * buses ;
 int sd_bus_flush_close_unref (int ) ;

__attribute__((used)) static void release_busses(void) {
        BusFocus w;

        for (w = 0; w < _BUS_FOCUS_MAX; w++)
                buses[w] = sd_bus_flush_close_unref(buses[w]);
}
