
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_event_source ;


 int PTR_TO_INT (void*) ;
 int assert (int *) ;
 int sd_event_exit (int ,int ) ;
 int sd_event_source_get_event (int *) ;

__attribute__((used)) static int time_exit_callback(sd_event_source *s, uint64_t usec, void *userdata) {
        assert(s);

        return sd_event_exit(sd_event_source_get_event(s), PTR_TO_INT(userdata));
}
