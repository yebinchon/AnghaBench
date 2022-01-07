
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_event_source ;
typedef int sd_bus ;


 int assert (int *) ;
 int bus_enter_closing (int *) ;
 int log_debug_errno (int,char*) ;
 int sd_bus_process (int *,int *) ;

__attribute__((used)) static int io_callback(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        sd_bus *bus = userdata;
        int r;

        assert(bus);



        r = sd_bus_process(bus, ((void*)0));
        if (r < 0) {
                log_debug_errno(r, "Processing of bus failed, closing down: %m");
                bus_enter_closing(bus);
        }

        return 1;
}
