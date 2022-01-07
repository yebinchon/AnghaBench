
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int ssize_t ;
typedef int buf ;
struct TYPE_6__ {scalar_t__ me; void* barriers; int pipe; } ;
typedef TYPE_1__ Barrier ;


 scalar_t__ BARRIER_ABORTION ;
 void* BARRIER_I_ABORTED ;
 void* BARRIER_WE_ABORTED ;
 int EAGAIN ;
 int EINTR ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int assert (int) ;
 scalar_t__ barrier_i_aborted (TYPE_1__*) ;
 int barrier_is_aborted (TYPE_1__*) ;
 scalar_t__ barrier_they_aborted (TYPE_1__*) ;
 int errno ;
 int safe_close_pair (int ) ;
 int write (scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static bool barrier_write(Barrier *b, uint64_t buf) {
        ssize_t len;


        if (barrier_i_aborted(b))
                return 0;

        assert(b->me >= 0);
        do {
                len = write(b->me, &buf, sizeof(buf));
        } while (len < 0 && IN_SET(errno, EAGAIN, EINTR));

        if (len != sizeof(buf))
                goto error;


        if (buf >= (uint64_t)BARRIER_ABORTION) {
                if (barrier_they_aborted(b))
                        b->barriers = BARRIER_WE_ABORTED;
                else
                        b->barriers = BARRIER_I_ABORTED;
        } else if (!barrier_is_aborted(b))
                b->barriers += buf;

        return !barrier_i_aborted(b);

error:





        safe_close_pair(b->pipe);
        b->barriers = BARRIER_WE_ABORTED;
        return 0;
}
