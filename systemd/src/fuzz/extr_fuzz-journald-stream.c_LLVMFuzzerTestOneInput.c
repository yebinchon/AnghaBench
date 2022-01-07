
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ n_stdout_streams; int event; } ;
typedef int StdoutStream ;
typedef TYPE_1__ Server ;


 int AF_UNIX ;
 int LOG_CRIT ;
 int SIOCINQ ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int assert_se (int) ;
 int dummy_server_init (TYPE_1__*,int *,int ) ;
 int getenv (char*) ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int log_set_max_level (int ) ;
 int safe_close (int ) ;
 int sd_event_run (int ,int ) ;
 int server_done (TYPE_1__*) ;
 scalar_t__ socketpair (int ,int,int ,int *) ;
 int stdout_stream_destroy (int *) ;
 scalar_t__ stdout_stream_install (TYPE_1__*,int ,int **) ;
 int * stream_fds ;
 scalar_t__ write (int ,int const*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
        Server s;
        StdoutStream *stream;
        int v;

        if (size == 0 || size > 65536)
                return 0;

        if (!getenv("SYSTEMD_LOG_LEVEL"))
                log_set_max_level(LOG_CRIT);

        assert_se(socketpair(AF_UNIX, SOCK_STREAM|SOCK_CLOEXEC|SOCK_NONBLOCK, 0, stream_fds) >= 0);
        dummy_server_init(&s, ((void*)0), 0);
        assert_se(stdout_stream_install(&s, stream_fds[0], &stream) >= 0);
        assert_se(write(stream_fds[1], data, size) == (ssize_t) size);
        while (ioctl(stream_fds[0], SIOCINQ, &v) == 0 && v)
                sd_event_run(s.event, (uint64_t) -1);
        if (s.n_stdout_streams)
                stdout_stream_destroy(stream);
        server_done(&s);
        stream_fds[1] = safe_close(stream_fds[1]);

        return 0;
}
