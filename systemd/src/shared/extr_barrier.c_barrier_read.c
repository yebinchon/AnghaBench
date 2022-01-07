
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pollfd {int events; int revents; int fd; } ;
typedef int ssize_t ;
typedef scalar_t__ int64_t ;
typedef int buf ;
struct TYPE_6__ {scalar_t__ barriers; int * pipe; int them; } ;
typedef TYPE_1__ Barrier ;


 scalar_t__ BARRIER_ABORTION ;
 scalar_t__ BARRIER_THEY_ABORTED ;
 void* BARRIER_WE_ABORTED ;
 int EAGAIN ;
 int EINTR ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 scalar_t__ barrier_i_aborted (TYPE_1__*) ;
 int barrier_is_aborted (TYPE_1__*) ;
 scalar_t__ barrier_they_aborted (TYPE_1__*) ;
 int errno ;
 int poll (struct pollfd*,int,int) ;
 int read (int ,scalar_t__*,int) ;
 int safe_close_pair (int *) ;

__attribute__((used)) static bool barrier_read(Barrier *b, int64_t comp) {
        if (barrier_they_aborted(b))
                return 0;

        while (b->barriers > comp) {
                struct pollfd pfd[2] = {
                        { .fd = b->pipe[0] >= 0 ? b->pipe[0] : b->pipe[1],
                          .events = POLLHUP },
                        { .fd = b->them,
                          .events = POLLIN }};
                uint64_t buf;
                int r;

                r = poll(pfd, 2, -1);
                if (r < 0 && IN_SET(errno, EAGAIN, EINTR))
                        continue;
                else if (r < 0)
                        goto error;

                if (pfd[1].revents) {
                        ssize_t len;


                        len = read(b->them, &buf, sizeof(buf));
                        if (len < 0 && IN_SET(errno, EAGAIN, EINTR))
                                continue;

                        if (len != sizeof(buf))
                                goto error;
                } else if (pfd[0].revents & (POLLHUP | POLLERR | POLLNVAL))





                        buf = BARRIER_ABORTION;
                else
                        continue;


                if (buf >= (uint64_t)BARRIER_ABORTION) {
                        if (barrier_i_aborted(b))
                                b->barriers = BARRIER_WE_ABORTED;
                        else
                                b->barriers = BARRIER_THEY_ABORTED;
                } else if (!barrier_is_aborted(b))
                        b->barriers -= buf;
        }

        return !barrier_they_aborted(b);

error:





        safe_close_pair(b->pipe);
        b->barriers = BARRIER_WE_ABORTED;
        return 0;
}
