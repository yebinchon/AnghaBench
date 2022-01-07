
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ fifo_fd; scalar_t__ fifo_path; int event_source; TYPE_1__* manager; int id; } ;
struct TYPE_6__ {int event; } ;
typedef TYPE_2__ Inhibitor ;


 int EEXIST ;
 int ENOMEM ;
 int MKDIR_WARN_MODE ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 scalar_t__ SD_EVENT_PRIORITY_IDLE ;
 int assert (TYPE_2__*) ;
 int errno ;
 int inhibitor_dispatch_fifo ;
 int mkdir_safe_label (char*,int,int ,int ,int ) ;
 scalar_t__ mkfifo (scalar_t__,int) ;
 void* open (scalar_t__,int) ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_2__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 scalar_t__ strjoin (char*,int ,char*) ;

int inhibitor_create_fifo(Inhibitor *i) {
        int r;

        assert(i);


        if (!i->fifo_path) {
                r = mkdir_safe_label("/run/systemd/inhibit", 0755, 0, 0, MKDIR_WARN_MODE);
                if (r < 0)
                        return r;

                i->fifo_path = strjoin("/run/systemd/inhibit/", i->id, ".ref");
                if (!i->fifo_path)
                        return -ENOMEM;

                if (mkfifo(i->fifo_path, 0600) < 0 && errno != EEXIST)
                        return -errno;
        }


        if (i->fifo_fd < 0) {
                i->fifo_fd = open(i->fifo_path, O_RDONLY|O_CLOEXEC|O_NONBLOCK);
                if (i->fifo_fd < 0)
                        return -errno;
        }

        if (!i->event_source) {
                r = sd_event_add_io(i->manager->event, &i->event_source, i->fifo_fd, 0, inhibitor_dispatch_fifo, i);
                if (r < 0)
                        return r;

                r = sd_event_source_set_priority(i->event_source, SD_EVENT_PRIORITY_IDLE-10);
                if (r < 0)
                        return r;

                (void) sd_event_source_set_description(i->event_source, "inhibitor-ref");
        }


        r = open(i->fifo_path, O_WRONLY|O_CLOEXEC|O_NONBLOCK);
        if (r < 0)
                return -errno;

        return r;
}
