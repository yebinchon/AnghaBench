
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* events; TYPE_3__* apidata; } ;
typedef TYPE_2__ aeEventLoop ;
struct TYPE_8__ {int* pending_masks; int* pending_fds; int portfd; } ;
typedef TYPE_3__ aeApiState ;
struct TYPE_6__ {int mask; } ;


 int AE_NONE ;
 int PORT_SOURCE_FD ;
 int abort () ;
 scalar_t__ aeApiAssociate (char*,int ,int,int) ;
 int aeApiLookupPending (TYPE_3__*,int) ;
 scalar_t__ evport_debug ;
 int fprintf (int ,char*,int,...) ;
 int perror (char*) ;
 scalar_t__ port_dissociate (int ,int ,int) ;
 int stderr ;

__attribute__((used)) static void aeApiDelEvent(aeEventLoop *eventLoop, int fd, int mask) {
    aeApiState *state = eventLoop->apidata;
    int fullmask, pfd;

    if (evport_debug)
        fprintf(stderr, "del fd %d mask 0x%x\n", fd, mask);

    pfd = aeApiLookupPending(state, fd);

    if (pfd != -1) {
        if (evport_debug)
            fprintf(stderr, "deleting event from pending fd %d\n", fd);






        state->pending_masks[pfd] &= ~mask;

        if (state->pending_masks[pfd] == AE_NONE)
            state->pending_fds[pfd] = -1;

        return;
    }
    fullmask = eventLoop->events[fd].mask;
    if (fullmask == AE_NONE) {




        if (evport_debug)
            fprintf(stderr, "aeApiDelEvent: port_dissociate(%d)\n", fd);

        if (port_dissociate(state->portfd, PORT_SOURCE_FD, fd) != 0) {
            perror("aeApiDelEvent: port_dissociate");
            abort();
        }
    } else if (aeApiAssociate("aeApiDelEvent", state->portfd, fd,
        fullmask) != 0) {







        abort();
    }
}
