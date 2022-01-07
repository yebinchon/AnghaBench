
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection_status_callback_id; int connection_status_callback_object; int (* connection_status_callback ) (int ,int ,int ) ;} ;
typedef int Net_Crypto ;
typedef TYPE_1__ Crypto_Connection ;


 int crypto_kill (int *,int) ;
 TYPE_1__* get_crypto_connection (int *,int) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void connection_kill(Net_Crypto *c, int crypt_connection_id)
{
    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return;

    if (conn->connection_status_callback) {
        conn->connection_status_callback(conn->connection_status_callback_object, conn->connection_status_callback_id, 0);
    }

    crypto_kill(c, crypt_connection_id);
}
