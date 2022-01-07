
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;


 int got_post ;
 int log_info (char*) ;

__attribute__((used)) static int post_handler(sd_event_source *s, void *userdata) {
        log_info("got post handler");

        got_post = 1;

        return 2;
}
