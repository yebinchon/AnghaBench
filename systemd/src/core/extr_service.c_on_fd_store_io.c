
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int fdname; int fd; int service; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ ServiceFDStore ;


 int EPOLLERR ;
 int UNIT (int ) ;
 int assert (TYPE_1__*) ;
 int log_unit_debug (int ,char*,char*,int ,int ) ;
 int service_fd_store_unlink (TYPE_1__*) ;
 int strna (int ) ;

__attribute__((used)) static int on_fd_store_io(sd_event_source *e, int fd, uint32_t revents, void *userdata) {
        ServiceFDStore *fs = userdata;

        assert(e);
        assert(fs);


        log_unit_debug(UNIT(fs->service),
                       "Received %s on stored fd %d (%s), closing.",
                       revents & EPOLLERR ? "EPOLLERR" : "EPOLLHUP",
                       fs->fd, strna(fs->fdname));
        service_fd_store_unlink(fs);
        return 0;
}
