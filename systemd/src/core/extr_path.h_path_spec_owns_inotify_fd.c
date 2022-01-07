
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inotify_fd; } ;
typedef TYPE_1__ PathSpec ;



__attribute__((used)) static inline bool path_spec_owns_inotify_fd(PathSpec *s, int fd) {
        return s->inotify_fd == fd;
}
