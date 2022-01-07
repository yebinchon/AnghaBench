
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;


 int PTR_TO_INT (void*) ;
 int got_exit ;
 int log_info (char*,int ) ;

__attribute__((used)) static int exit_handler(sd_event_source *s, void *userdata) {
        log_info("got quit handler on %c", PTR_TO_INT(userdata));

        got_exit = 1;

        return 3;
}
