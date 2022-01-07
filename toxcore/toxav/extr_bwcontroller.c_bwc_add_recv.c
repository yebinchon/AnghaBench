
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int recv; } ;
struct TYPE_6__ {TYPE_1__ cycle; } ;
typedef TYPE_2__ BWController ;


 int send_update (TYPE_2__*) ;

void bwc_add_recv(BWController *bwc, uint32_t bytes)
{
    if (!bwc || !bytes)
        return;

    bwc->cycle.recv += bytes;
    send_update(bwc);
}
