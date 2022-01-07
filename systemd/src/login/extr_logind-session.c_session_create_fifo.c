
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ fifo_fd; scalar_t__ fifo_path; int fifo_event_source; TYPE_1__* manager; int id; } ;
struct TYPE_6__ {int event; } ;
typedef TYPE_2__ Session ;


 int EEXIST ;
 int ENOMEM ;
 int MKDIR_WARN_MODE ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ;
 int assert (TYPE_2__*) ;
 int errno ;
 int mkdir_safe_label (char*,int,int ,int ,int ) ;
 scalar_t__ mkfifo (scalar_t__,int) ;
 void* open (scalar_t__,int) ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_2__*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 int session_dispatch_fifo ;
 scalar_t__ strjoin (char*,int ,char*) ;

int session_create_fifo(Session *s) {
        int r;

        assert(s);


        if (!s->fifo_path) {
                r = mkdir_safe_label("/run/systemd/sessions", 0755, 0, 0, MKDIR_WARN_MODE);
                if (r < 0)
                        return r;

                s->fifo_path = strjoin("/run/systemd/sessions/", s->id, ".ref");
                if (!s->fifo_path)
                        return -ENOMEM;

                if (mkfifo(s->fifo_path, 0600) < 0 && errno != EEXIST)
                        return -errno;
        }


        if (s->fifo_fd < 0) {
                s->fifo_fd = open(s->fifo_path, O_RDONLY|O_CLOEXEC|O_NONBLOCK);
                if (s->fifo_fd < 0)
                        return -errno;
        }

        if (!s->fifo_event_source) {
                r = sd_event_add_io(s->manager->event, &s->fifo_event_source, s->fifo_fd, 0, session_dispatch_fifo, s);
                if (r < 0)
                        return r;



                r = sd_event_source_set_priority(s->fifo_event_source, SD_EVENT_PRIORITY_NORMAL-10);
                if (r < 0)
                        return r;
        }


        r = open(s->fifo_path, O_WRONLY|O_CLOEXEC|O_NONBLOCK);
        if (r < 0)
                return -errno;

        return r;
}
