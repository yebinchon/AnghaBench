
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inotify_fd; int directories_by_wd; } ;
typedef TYPE_1__ sd_journal ;


 int IN_CLOEXEC ;
 int IN_NONBLOCK ;
 int assert (TYPE_1__*) ;
 int errno ;
 int hashmap_ensure_allocated (int *,int *) ;
 scalar_t__ inotify_init1 (int) ;

__attribute__((used)) static int allocate_inotify(sd_journal *j) {
        assert(j);

        if (j->inotify_fd < 0) {
                j->inotify_fd = inotify_init1(IN_NONBLOCK|IN_CLOEXEC);
                if (j->inotify_fd < 0)
                        return -errno;
        }

        return hashmap_ensure_allocated(&j->directories_by_wd, ((void*)0));
}
