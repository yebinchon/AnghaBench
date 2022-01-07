
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_event_source ;


 void* INT_TO_PTR (char) ;
 int PTR_TO_INT (void*) ;
 int SD_EVENT_ONESHOT ;
 int assert_not_reached (char*) ;
 int assert_se (int) ;
 int defer_handler ;
 scalar_t__ do_quit ;
 int got_c ;
 int log_info (char*,int ) ;
 scalar_t__ sd_event_add_defer (int ,int **,int ,void*) ;
 int sd_event_source_get_event (int *) ;
 scalar_t__ sd_event_source_set_enabled (int *,int ) ;

__attribute__((used)) static int time_handler(sd_event_source *s, uint64_t usec, void *userdata) {
        log_info("got timer on %c", PTR_TO_INT(userdata));

        if (userdata == INT_TO_PTR('c')) {

                if (do_quit) {
                        sd_event_source *p;

                        assert_se(sd_event_add_defer(sd_event_source_get_event(s), &p, defer_handler, INT_TO_PTR('d')) >= 0);
                        assert_se(sd_event_source_set_enabled(p, SD_EVENT_ONESHOT) >= 0);
                } else {
                        assert_se(!got_c);
                        got_c = 1;
                }
        } else
                assert_not_reached("Huh?");

        return 2;
}
