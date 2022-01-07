
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_event_source ;


 void* INT_TO_PTR (char) ;
 int PTR_TO_INT (void*) ;
 int SD_EVENT_OFF ;
 int SD_EVENT_ONESHOT ;
 int assert_not_reached (char*) ;
 int assert_se (int) ;
 int got_a ;
 int got_b ;
 int got_d ;
 int log_info (char*,int ) ;
 scalar_t__ sd_event_source_set_enabled (int *,int ) ;

__attribute__((used)) static int io_handler(sd_event_source *s, int fd, uint32_t revents, void *userdata) {

        log_info("got IO on %c", PTR_TO_INT(userdata));

        if (userdata == INT_TO_PTR('a')) {
                assert_se(sd_event_source_set_enabled(s, SD_EVENT_OFF) >= 0);
                assert_se(!got_a);
                got_a = 1;
        } else if (userdata == INT_TO_PTR('b')) {
                assert_se(!got_b);
                got_b = 1;
        } else if (userdata == INT_TO_PTR('d')) {
                got_d++;
                if (got_d < 2)
                        assert_se(sd_event_source_set_enabled(s, SD_EVENT_ONESHOT) >= 0);
                else
                        assert_se(sd_event_source_set_enabled(s, SD_EVENT_OFF) >= 0);
        } else
                assert_not_reached("Yuck!");

        return 1;
}
