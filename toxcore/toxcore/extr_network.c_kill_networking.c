
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ family; int sock; } ;
typedef TYPE_1__ Networking_Core ;


 int free (TYPE_1__*) ;
 int kill_sock (int ) ;

void kill_networking(Networking_Core *net)
{
    if (!net)
        return;

    if (net->family != 0)
        kill_sock(net->sock);

    free(net);
    return;
}
