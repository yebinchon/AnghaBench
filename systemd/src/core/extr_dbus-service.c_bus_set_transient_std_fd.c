
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef int Unit ;


 int F_DUPFD_CLOEXEC ;
 int UNIT_WRITE_FLAGS_NOOP (int ) ;
 int assert (int*) ;
 int asynchronous_close (int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int sd_bus_message_read (int *,char*,int*) ;

__attribute__((used)) static int bus_set_transient_std_fd(
                Unit *u,
                const char *name,
                int *p,
                bool *b,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int fd, r;

        assert(p);
        assert(b);

        r = sd_bus_message_read(message, "h", &fd);
        if (r < 0)
                return r;

        if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                int copy;

                copy = fcntl(fd, F_DUPFD_CLOEXEC, 3);
                if (copy < 0)
                        return -errno;

                asynchronous_close(*p);
                *p = copy;
                *b = 1;
        }

        return 1;
}
