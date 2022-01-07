
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * conns; } ;
typedef TYPE_1__ Friend_Connections ;
typedef int Friend_Conn ;


 scalar_t__ friendconn_id_not_valid (TYPE_1__ const*,int) ;

__attribute__((used)) static Friend_Conn *get_conn(const Friend_Connections *fr_c, int friendcon_id)
{
    if (friendconn_id_not_valid(fr_c, friendcon_id))
        return 0;

    return &fr_c->conns[friendcon_id];
}
