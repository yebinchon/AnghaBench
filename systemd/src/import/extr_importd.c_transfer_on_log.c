
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {scalar_t__ log_message; scalar_t__ log_message_size; int log_event_source; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ Transfer ;


 int assert (TYPE_1__*) ;
 int errno ;
 int log_error_errno (int ,char*) ;
 scalar_t__ read (int,scalar_t__,scalar_t__) ;
 int sd_event_source_unref (int ) ;
 int transfer_send_logs (TYPE_1__*,int) ;

__attribute__((used)) static int transfer_on_log(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        Transfer *t = userdata;
        ssize_t l;

        assert(s);
        assert(t);

        l = read(fd, t->log_message + t->log_message_size, sizeof(t->log_message) - t->log_message_size);
        if (l < 0)
                log_error_errno(errno, "Failed to read log message: %m");
        if (l <= 0) {



                t->log_event_source = sd_event_source_unref(t->log_event_source);
                return 0;
        }

        t->log_message_size += l;

        transfer_send_logs(t, 0);

        return 0;
}
