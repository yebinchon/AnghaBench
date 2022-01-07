
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;


 void* INT_TO_PTR (char) ;
 int PTR_TO_INT (void*) ;
 int SD_EVENT_ONESHOT ;
 int SIGUSR1 ;
 int SIG_BLOCK ;
 int assert_se (int) ;
 int log_info (char*,int ) ;
 int raise (int ) ;
 scalar_t__ sd_event_add_signal (int ,int **,int ,int ,void*) ;
 int sd_event_source_get_event (int *) ;
 scalar_t__ sd_event_source_set_enabled (int *,int ) ;
 int sd_event_source_unref (int *) ;
 int signal_handler ;
 scalar_t__ sigprocmask_many (int ,int *,int ,int) ;

__attribute__((used)) static int defer_handler(sd_event_source *s, void *userdata) {
        sd_event_source *p = ((void*)0);

        assert_se(s);

        log_info("got defer on %c", PTR_TO_INT(userdata));

        assert_se(userdata == INT_TO_PTR('d'));

        assert_se(sigprocmask_many(SIG_BLOCK, ((void*)0), SIGUSR1, -1) >= 0);

        assert_se(sd_event_add_signal(sd_event_source_get_event(s), &p, SIGUSR1, signal_handler, INT_TO_PTR('e')) >= 0);
        assert_se(sd_event_source_set_enabled(p, SD_EVENT_ONESHOT) >= 0);
        raise(SIGUSR1);

        sd_event_source_unref(s);

        return 1;
}
