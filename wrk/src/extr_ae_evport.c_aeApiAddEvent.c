
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* events; TYPE_3__* apidata; } ;
typedef TYPE_2__ aeEventLoop ;
struct TYPE_8__ {int* pending_masks; int portfd; } ;
typedef TYPE_3__ aeApiState ;
struct TYPE_6__ {int mask; } ;


 int aeApiAssociate (char*,int ,int,int) ;
 int aeApiLookupPending (TYPE_3__*,int) ;
 scalar_t__ evport_debug ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

__attribute__((used)) static int aeApiAddEvent(aeEventLoop *eventLoop, int fd, int mask) {
    aeApiState *state = eventLoop->apidata;
    int fullmask, pfd;

    if (evport_debug)
        fprintf(stderr, "aeApiAddEvent: fd %d mask 0x%x\n", fd, mask);






    fullmask = mask | eventLoop->events[fd].mask;
    pfd = aeApiLookupPending(state, fd);

    if (pfd != -1) {






        if (evport_debug)
            fprintf(stderr, "aeApiAddEvent: adding to pending fd %d\n", fd);
        state->pending_masks[pfd] |= fullmask;
        return 0;
    }

    return (aeApiAssociate("aeApiAddEvent", state->portfd, fd, fullmask));
}
