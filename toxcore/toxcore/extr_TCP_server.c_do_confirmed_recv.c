
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int packet ;
struct TYPE_7__ {int recv_nonce; int shared_key; int next_packet_length; int sock; } ;
struct TYPE_6__ {TYPE_2__* accepted_connection_array; } ;
typedef TYPE_1__ TCP_Server ;
typedef TYPE_2__ TCP_Secure_Connection ;


 int MAX_PACKET_SIZE ;
 int handle_TCP_packet (TYPE_1__*,size_t,int *,int) ;
 int kill_accepted (TYPE_1__*,size_t) ;
 int read_packet_TCP_secure_connection (int ,int *,int ,int ,int *,int) ;

__attribute__((used)) static void do_confirmed_recv(TCP_Server *TCP_server, uint32_t i)
{
    TCP_Secure_Connection *conn = &TCP_server->accepted_connection_array[i];

    uint8_t packet[MAX_PACKET_SIZE];
    int len;

    while ((len = read_packet_TCP_secure_connection(conn->sock, &conn->next_packet_length, conn->shared_key,
                  conn->recv_nonce, packet, sizeof(packet)))) {
        if (len == -1) {
            kill_accepted(TCP_server, i);
            break;
        }

        if (handle_TCP_packet(TCP_server, i, packet, len) == -1) {
            kill_accepted(TCP_server, i);
            break;
        }
    }
}
