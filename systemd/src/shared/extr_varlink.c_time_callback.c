
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_event_source ;
typedef int Varlink ;


 int assert (int *) ;
 int varlink_process (int *) ;

__attribute__((used)) static int time_callback(sd_event_source *s, uint64_t usec, void *userdata) {
        Varlink *v = userdata;

        assert(s);
        assert(v);

        (void) varlink_process(v);
        return 1;
}
