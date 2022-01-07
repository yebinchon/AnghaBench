
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;
typedef int Varlink ;


 int assert (int *) ;
 int varlink_close (int *) ;
 int varlink_flush (int *) ;

__attribute__((used)) static int quit_callback(sd_event_source *event, void *userdata) {
        Varlink *v = userdata;

        assert(event);
        assert(v);

        varlink_flush(v);
        varlink_close(v);

        return 1;
}
