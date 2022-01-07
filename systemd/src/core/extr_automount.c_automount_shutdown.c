
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev_autofs_fd; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int safe_close (int ) ;

__attribute__((used)) static void automount_shutdown(Manager *m) {
        assert(m);

        m->dev_autofs_fd = safe_close(m->dev_autofs_fd);
}
