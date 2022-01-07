
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crypt_connection_id; } ;
typedef int Friend_Connections ;
typedef TYPE_1__ Friend_Conn ;


 TYPE_1__* get_conn (int *,int) ;

int friend_connection_crypt_connection_id(Friend_Connections *fr_c, int friendcon_id)
{
    Friend_Conn *friend_con = get_conn(fr_c, friendcon_id);

    if (!friend_con)
        return -1;

    return friend_con->crypt_connection_id;
}
