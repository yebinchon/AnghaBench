
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int sd_event_source ;
typedef int sd_event ;
typedef int int64_t ;


 int CLOCK_MONOTONIC ;
 int EPOLLIN ;
 int * INT_TO_PTR (char) ;
 int SD_EVENT_ONESHOT ;
 scalar_t__ SIGRTMIN ;
 int SIG_BLOCK ;
 int USEC_PER_MSEC ;
 int assert_se (int) ;
 int do_quit ;
 int exit_handler ;
 int got_a ;
 int got_b ;
 int got_c ;
 int got_d ;
 int got_exit ;
 int got_post ;
 int got_unref ;
 int io_handler ;
 scalar_t__ pipe (int*) ;
 int post_handler ;
 int prepare_handler ;
 int safe_close_pair (int*) ;
 scalar_t__ sd_event_add_exit (int *,int **,int ,int *) ;
 scalar_t__ sd_event_add_io (int *,int **,int,int ,int ,int *) ;
 scalar_t__ sd_event_add_post (int *,int *,int ,int *) ;
 scalar_t__ sd_event_add_signal (int *,int *,scalar_t__,int *,int *) ;
 scalar_t__ sd_event_add_time (int *,int **,int ,int ,int ,int ,int *) ;
 scalar_t__ sd_event_default (int **) ;
 scalar_t__ sd_event_loop (int *) ;
 scalar_t__ sd_event_now (int *,int ,scalar_t__*) ;
 int sd_event_run (int *,scalar_t__) ;
 scalar_t__ sd_event_set_watchdog (int *,int) ;
 scalar_t__ sd_event_source_get_priority (int *,int*) ;
 scalar_t__ sd_event_source_set_enabled (int *,int ) ;
 scalar_t__ sd_event_source_set_prepare (int *,int ) ;
 scalar_t__ sd_event_source_set_priority (int *,int) ;
 scalar_t__ sd_event_source_set_time (int *,scalar_t__) ;
 int sd_event_source_unref (int *) ;
 int sd_event_unref (int *) ;
 scalar_t__ sigprocmask_many (int ,int *,scalar_t__,int) ;
 int time_handler ;
 int unref_handler ;
 int write (int,char const*,int) ;

__attribute__((used)) static void test_basic(void) {
        sd_event *e = ((void*)0);
        sd_event_source *w = ((void*)0), *x = ((void*)0), *y = ((void*)0), *z = ((void*)0), *q = ((void*)0), *t = ((void*)0);
        static const char ch = 'x';
        int a[2] = { -1, -1 }, b[2] = { -1, -1}, d[2] = { -1, -1}, k[2] = { -1, -1 };
        uint64_t event_now;
        int64_t priority;

        assert_se(pipe(a) >= 0);
        assert_se(pipe(b) >= 0);
        assert_se(pipe(d) >= 0);
        assert_se(pipe(k) >= 0);

        assert_se(sd_event_default(&e) >= 0);
        assert_se(sd_event_now(e, CLOCK_MONOTONIC, &event_now) > 0);

        assert_se(sd_event_set_watchdog(e, 1) >= 0);


        got_unref = 0;
        assert_se(sd_event_add_io(e, &t, k[0], EPOLLIN, unref_handler, ((void*)0)) >= 0);
        assert_se(write(k[1], &ch, 1) == 1);
        assert_se(sd_event_run(e, (uint64_t) -1) >= 1);
        assert_se(got_unref);

        got_a = 0, got_b = 0, got_c = 0, got_d = 0;



        assert_se(sd_event_add_io(e, &w, d[0], EPOLLIN, io_handler, INT_TO_PTR('d')) >= 0);
        assert_se(sd_event_source_set_enabled(w, SD_EVENT_ONESHOT) >= 0);
        assert_se(write(d[1], &ch, 1) >= 0);
        assert_se(sd_event_run(e, (uint64_t) -1) >= 1);
        assert_se(got_d == 1);
        assert_se(write(d[1], &ch, 1) >= 0);
        assert_se(sd_event_run(e, (uint64_t) -1) >= 1);
        assert_se(got_d == 2);

        assert_se(sd_event_add_io(e, &x, a[0], EPOLLIN, io_handler, INT_TO_PTR('a')) >= 0);
        assert_se(sd_event_add_io(e, &y, b[0], EPOLLIN, io_handler, INT_TO_PTR('b')) >= 0);
        assert_se(sd_event_add_time(e, &z, CLOCK_MONOTONIC, 0, 0, time_handler, INT_TO_PTR('c')) >= 0);
        assert_se(sd_event_add_exit(e, &q, exit_handler, INT_TO_PTR('g')) >= 0);

        assert_se(sd_event_source_set_priority(x, 99) >= 0);
        assert_se(sd_event_source_get_priority(x, &priority) >= 0);
        assert_se(priority == 99);
        assert_se(sd_event_source_set_enabled(y, SD_EVENT_ONESHOT) >= 0);
        assert_se(sd_event_source_set_prepare(x, prepare_handler) >= 0);
        assert_se(sd_event_source_set_priority(z, 50) >= 0);
        assert_se(sd_event_source_set_enabled(z, SD_EVENT_ONESHOT) >= 0);
        assert_se(sd_event_source_set_prepare(z, prepare_handler) >= 0);


        assert_se(sigprocmask_many(SIG_BLOCK, ((void*)0), SIGRTMIN+1, -1) >= 0);
        assert_se(sd_event_add_signal(e, ((void*)0), SIGRTMIN+1, ((void*)0), ((void*)0)) >= 0);

        assert_se(write(a[1], &ch, 1) >= 0);
        assert_se(write(b[1], &ch, 1) >= 0);

        assert_se(!got_a && !got_b && !got_c);

        assert_se(sd_event_run(e, (uint64_t) -1) >= 1);

        assert_se(!got_a && got_b && !got_c);

        assert_se(sd_event_run(e, (uint64_t) -1) >= 1);

        assert_se(!got_a && got_b && got_c);

        assert_se(sd_event_run(e, (uint64_t) -1) >= 1);

        assert_se(got_a && got_b && got_c);

        sd_event_source_unref(x);
        sd_event_source_unref(y);

        do_quit = 1;
        assert_se(sd_event_add_post(e, ((void*)0), post_handler, ((void*)0)) >= 0);
        assert_se(sd_event_now(e, CLOCK_MONOTONIC, &event_now) == 0);
        assert_se(sd_event_source_set_time(z, event_now + 200 * USEC_PER_MSEC) >= 0);
        assert_se(sd_event_source_set_enabled(z, SD_EVENT_ONESHOT) >= 0);

        assert_se(sd_event_loop(e) >= 0);
        assert_se(got_post);
        assert_se(got_exit);

        sd_event_source_unref(z);
        sd_event_source_unref(q);

        sd_event_source_unref(w);

        sd_event_unref(e);

        safe_close_pair(a);
        safe_close_pair(b);
        safe_close_pair(d);
        safe_close_pair(k);
}
