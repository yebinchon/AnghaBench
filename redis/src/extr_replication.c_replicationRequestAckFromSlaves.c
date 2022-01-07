
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int get_ack_from_slaves; } ;


 TYPE_1__ server ;

void replicationRequestAckFromSlaves(void) {
    server.get_ack_from_slaves = 1;
}
