
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_event_source ;
typedef int Varlink ;


 int assert (int *) ;
 int handle_revents (int *,int ) ;
 int varlink_process (int *) ;

__attribute__((used)) static int io_callback(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        Varlink *v = userdata;

        assert(s);
        assert(v);

        handle_revents(v, revents);
        (void) varlink_process(v);

        return 1;
}
