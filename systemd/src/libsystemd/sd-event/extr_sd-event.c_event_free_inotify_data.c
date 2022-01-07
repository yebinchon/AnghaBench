
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct inotify_data {scalar_t__ buffer_filled; scalar_t__ fd; int priority; int wd; int inodes; } ;
struct TYPE_5__ {int epoll_fd; int inotify_data; int inotify_data_buffered; } ;
typedef TYPE_1__ sd_event ;


 int EPOLL_CTL_DEL ;
 int LIST_REMOVE (int ,int ,struct inotify_data*) ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int buffered ;
 scalar_t__ epoll_ctl (int ,int ,scalar_t__,int *) ;
 int errno ;
 int free (struct inotify_data*) ;
 int hashmap_free (int ) ;
 TYPE_1__* hashmap_isempty (int ) ;
 struct inotify_data* hashmap_remove (int ,int *) ;
 int log_debug_errno (int ,char*) ;
 int safe_close (scalar_t__) ;

__attribute__((used)) static void event_free_inotify_data(sd_event *e, struct inotify_data *d) {
        assert(e);

        if (!d)
                return;

        assert(hashmap_isempty(d->inodes));
        assert(hashmap_isempty(d->wd));

        if (d->buffer_filled > 0)
                LIST_REMOVE(buffered, e->inotify_data_buffered, d);

        hashmap_free(d->inodes);
        hashmap_free(d->wd);

        assert_se(hashmap_remove(e->inotify_data, &d->priority) == d);

        if (d->fd >= 0) {
                if (epoll_ctl(e->epoll_fd, EPOLL_CTL_DEL, d->fd, ((void*)0)) < 0)
                        log_debug_errno(errno, "Failed to remove inotify fd from epoll, ignoring: %m");

                safe_close(d->fd);
        }
        free(d);
}
