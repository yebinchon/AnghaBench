
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;
typedef int sd_event_source ;


 void* INT_TO_PTR (float) ;
 int PTR_TO_INT (void*) ;
 int assert_se (int) ;
 int log_info (char*,int ) ;
 scalar_t__ sd_event_exit (int ,int ) ;
 int sd_event_source_get_event (int *) ;
 int sd_event_source_unref (int *) ;

__attribute__((used)) static int child_handler(sd_event_source *s, const siginfo_t *si, void *userdata) {

        assert_se(s);
        assert_se(si);

        log_info("got child on %c", PTR_TO_INT(userdata));

        assert_se(userdata == INT_TO_PTR('f'));

        assert_se(sd_event_exit(sd_event_source_get_event(s), 0) >= 0);
        sd_event_source_unref(s);

        return 1;
}
