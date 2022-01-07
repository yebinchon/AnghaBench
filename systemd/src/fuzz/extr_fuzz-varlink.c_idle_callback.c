
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;


 int assert (int *) ;
 int sd_event_exit (int ,int ) ;
 int sd_event_source_get_event (int *) ;

__attribute__((used)) static int idle_callback(sd_event_source *s, void *userdata) {
        assert(s);


        sd_event_exit(sd_event_source_get_event(s), 0);
        return 0;
}
