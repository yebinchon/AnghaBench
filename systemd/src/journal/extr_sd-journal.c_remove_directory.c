
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ inotify_fd; int directories_by_path; int directories_by_wd; } ;
typedef TYPE_1__ sd_journal ;
struct TYPE_11__ {scalar_t__ wd; struct TYPE_11__* path; scalar_t__ is_root; } ;
typedef TYPE_2__ Directory ;


 TYPE_2__* INT_TO_PTR (scalar_t__) ;
 int assert (TYPE_1__*) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,TYPE_2__*) ;
 int inotify_rm_watch (scalar_t__,scalar_t__) ;
 int log_debug (char*,TYPE_2__*) ;

__attribute__((used)) static void remove_directory(sd_journal *j, Directory *d) {
        assert(j);

        if (d->wd > 0) {
                hashmap_remove(j->directories_by_wd, INT_TO_PTR(d->wd));

                if (j->inotify_fd >= 0)
                        (void) inotify_rm_watch(j->inotify_fd, d->wd);
        }

        hashmap_remove(j->directories_by_path, d->path);

        if (d->is_root)
                log_debug("Root directory %s removed.", d->path);
        else
                log_debug("Directory %s removed.", d->path);

        free(d->path);
        free(d);
}
