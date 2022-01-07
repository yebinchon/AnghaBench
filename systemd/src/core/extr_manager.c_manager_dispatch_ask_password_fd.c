
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_3__ {scalar_t__ have_ask_password; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int flush_fd (int) ;
 scalar_t__ have_ask_password () ;
 int log_error_errno (scalar_t__,char*) ;

__attribute__((used)) static int manager_dispatch_ask_password_fd(sd_event_source *source,
                                            int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;

        assert(m);

        (void) flush_fd(fd);

        m->have_ask_password = have_ask_password();
        if (m->have_ask_password < 0)


                log_error_errno(m->have_ask_password, "Failed to list /run/systemd/ask-password: %m");

        return 0;
}
