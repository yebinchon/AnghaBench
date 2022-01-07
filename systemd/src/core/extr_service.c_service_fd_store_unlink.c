
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; struct TYPE_7__* fdname; int event_source; TYPE_1__* service; } ;
struct TYPE_6__ {scalar_t__ n_fd_store; int fd_store; } ;
typedef TYPE_2__ ServiceFDStore ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (int) ;
 int fd_store ;
 int free (TYPE_2__*) ;
 int safe_close (int ) ;
 int sd_event_source_disable_unref (int ) ;

__attribute__((used)) static void service_fd_store_unlink(ServiceFDStore *fs) {

        if (!fs)
                return;

        if (fs->service) {
                assert(fs->service->n_fd_store > 0);
                LIST_REMOVE(fd_store, fs->service->fd_store, fs);
                fs->service->n_fd_store--;
        }

        sd_event_source_disable_unref(fs->event_source);

        free(fs->fdname);
        safe_close(fs->fd);
        free(fs);
}
