
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_event_source ;
typedef int User ;


 int assert (int *) ;
 int user_add_to_gc_queue (int *) ;

__attribute__((used)) static int user_stop_timeout_callback(sd_event_source *es, uint64_t usec, void *userdata) {
        User *u = userdata;

        assert(u);
        user_add_to_gc_queue(u);

        return 0;
}
