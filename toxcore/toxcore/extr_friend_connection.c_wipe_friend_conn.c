
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_6__ {int num_cons; TYPE_4__* conns; } ;
typedef TYPE_1__ Friend_Connections ;
typedef int Friend_Conn ;


 scalar_t__ FRIENDCONN_STATUS_NONE ;
 scalar_t__ friendconn_id_not_valid (TYPE_1__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int realloc_friendconns (TYPE_1__*,int) ;

__attribute__((used)) static int wipe_friend_conn(Friend_Connections *fr_c, int friendcon_id)
{
    if (friendconn_id_not_valid(fr_c, friendcon_id))
        return -1;

    uint32_t i;
    memset(&(fr_c->conns[friendcon_id]), 0 , sizeof(Friend_Conn));

    for (i = fr_c->num_cons; i != 0; --i) {
        if (fr_c->conns[i - 1].status != FRIENDCONN_STATUS_NONE)
            break;
    }

    if (fr_c->num_cons != i) {
        fr_c->num_cons = i;
        realloc_friendconns(fr_c, fr_c->num_cons);
    }

    return 0;
}
