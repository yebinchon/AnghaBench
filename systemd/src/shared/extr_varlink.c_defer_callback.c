
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;
typedef int Varlink ;


 int assert (int *) ;
 int varlink_process (int *) ;

__attribute__((used)) static int defer_callback(sd_event_source *s, void *userdata) {
        Varlink *v = userdata;

        assert(s);
        assert(v);

        (void) varlink_process(v);
        return 1;
}
