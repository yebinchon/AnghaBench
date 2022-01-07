
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inotify_event {int mask; scalar_t__ len; int name; int wd; int directories_by_wd; } ;
typedef struct inotify_event sd_journal ;
struct TYPE_4__ {int path; scalar_t__ is_root; } ;
typedef TYPE_1__ Directory ;


 int INT_TO_PTR (int ) ;
 int IN_ATTRIB ;
 int IN_CREATE ;
 int IN_DELETE ;
 int IN_DELETE_SELF ;
 int IN_IGNORED ;
 int IN_ISDIR ;
 int IN_MODIFY ;
 int IN_MOVED_FROM ;
 int IN_MOVED_TO ;
 int IN_MOVE_SELF ;
 int IN_Q_OVERFLOW ;
 int IN_UNMOUNT ;
 int add_directory (struct inotify_event*,int ,int ) ;
 int add_file_by_name (struct inotify_event*,int ,int ) ;
 int assert (struct inotify_event*) ;
 scalar_t__ endswith (int ,char*) ;
 TYPE_1__* hashmap_get (int ,int ) ;
 scalar_t__ id128_is_valid (int ) ;
 int log_debug (char*) ;
 int process_q_overflow (struct inotify_event*) ;
 int remove_directory (struct inotify_event*,TYPE_1__*) ;
 int remove_file_by_name (struct inotify_event*,int ,int ) ;

__attribute__((used)) static void process_inotify_event(sd_journal *j, struct inotify_event *e) {
        Directory *d;

        assert(j);
        assert(e);

        if (e->mask & IN_Q_OVERFLOW) {
                process_q_overflow(j);
                return;
        }


        d = hashmap_get(j->directories_by_wd, INT_TO_PTR(e->wd));
        if (d) {
                if (!(e->mask & IN_ISDIR) && e->len > 0 &&
                    (endswith(e->name, ".journal") ||
                     endswith(e->name, ".journal~"))) {



                        if (e->mask & (IN_CREATE|IN_MOVED_TO|IN_MODIFY|IN_ATTRIB))
                                (void) add_file_by_name(j, d->path, e->name);
                        else if (e->mask & (IN_DELETE|IN_MOVED_FROM|IN_UNMOUNT))
                                remove_file_by_name(j, d->path, e->name);

                } else if (!d->is_root && e->len == 0) {



                        if (e->mask & (IN_DELETE_SELF|IN_MOVE_SELF|IN_UNMOUNT))
                                remove_directory(j, d);

                } else if (d->is_root && (e->mask & IN_ISDIR) && e->len > 0 && id128_is_valid(e->name)) {



                        if (e->mask & (IN_CREATE|IN_MOVED_TO|IN_MODIFY|IN_ATTRIB))
                                (void) add_directory(j, d->path, e->name);
                }

                return;
        }

        if (e->mask & IN_IGNORED)
                return;

        log_debug("Unexpected inotify event.");
}
