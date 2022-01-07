
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {unsigned int num_cons; TYPE_1__* conns; } ;
struct TYPE_4__ {scalar_t__ status; } ;
typedef TYPE_2__ Friend_Connections ;


 scalar_t__ FRIENDCONN_STATUS_NONE ;

__attribute__((used)) static uint8_t friendconn_id_not_valid(const Friend_Connections *fr_c, int friendcon_id)
{
    if ((unsigned int)friendcon_id >= fr_c->num_cons)
        return 1;

    if (fr_c->conns == ((void*)0))
        return 1;

    if (fr_c->conns[friendcon_id].status == FRIENDCONN_STATUS_NONE)
        return 1;

    return 0;
}
