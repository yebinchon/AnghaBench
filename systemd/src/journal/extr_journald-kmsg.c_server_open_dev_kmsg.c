
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_5__ {scalar_t__ dev_kmsg_fd; int dev_kmsg_readable; int dev_kmsg_event_source; int event; scalar_t__ read_kmsg; } ;
typedef TYPE_1__ Server ;


 scalar_t__ ENOENT ;
 int EPERM ;
 int EPOLLIN ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int O_CLOEXEC ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int O_WRONLY ;
 scalar_t__ SD_EVENT_PRIORITY_IMPORTANT ;
 int assert (TYPE_1__*) ;
 int dispatch_dev_kmsg ;
 scalar_t__ errno ;
 int log_error_errno (int,char*) ;
 int log_full (int ,char*) ;
 scalar_t__ open (char*,int) ;
 scalar_t__ safe_close (scalar_t__) ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 int sd_event_source_unref (int ) ;

int server_open_dev_kmsg(Server *s) {
        mode_t mode;
        int r;

        assert(s);

        if (s->read_kmsg)
                mode = O_RDWR|O_CLOEXEC|O_NONBLOCK|O_NOCTTY;
        else
                mode = O_WRONLY|O_CLOEXEC|O_NONBLOCK|O_NOCTTY;

        s->dev_kmsg_fd = open("/dev/kmsg", mode);
        if (s->dev_kmsg_fd < 0) {
                log_full(errno == ENOENT ? LOG_DEBUG : LOG_WARNING,
                         "Failed to open /dev/kmsg, ignoring: %m");
                return 0;
        }

        if (!s->read_kmsg)
                return 0;

        r = sd_event_add_io(s->event, &s->dev_kmsg_event_source, s->dev_kmsg_fd, EPOLLIN, dispatch_dev_kmsg, s);
        if (r < 0) {



                if (r == -EPERM) {
                        r = 0;
                        goto fail;
                }

                log_error_errno(r, "Failed to add /dev/kmsg fd to event loop: %m");
                goto fail;
        }

        r = sd_event_source_set_priority(s->dev_kmsg_event_source, SD_EVENT_PRIORITY_IMPORTANT+10);
        if (r < 0) {
                log_error_errno(r, "Failed to adjust priority of kmsg event source: %m");
                goto fail;
        }

        s->dev_kmsg_readable = 1;

        return 0;

fail:
        s->dev_kmsg_event_source = sd_event_source_unref(s->dev_kmsg_event_source);
        s->dev_kmsg_fd = safe_close(s->dev_kmsg_fd);

        return r;
}
