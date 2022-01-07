
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int sock; } ;
typedef TYPE_1__ TCP_Secure_Connection ;


 int TCP_CLIENT_HANDSHAKE_SIZE ;
 int handle_TCP_handshake (TYPE_1__*,int *,int,int const*) ;
 int read_TCP_packet (int ,int *,int) ;

__attribute__((used)) static int read_connection_handshake(TCP_Secure_Connection *con, const uint8_t *self_secret_key)
{
    uint8_t data[TCP_CLIENT_HANDSHAKE_SIZE];
    int len = 0;

    if ((len = read_TCP_packet(con->sock, data, TCP_CLIENT_HANDSHAKE_SIZE)) != -1) {
        return handle_TCP_handshake(con, data, len, self_secret_key);
    }

    return 0;
}
