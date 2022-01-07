
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int packet ;
struct TYPE_7__ {void* status; int recv_nonce; int shared_key; int next_packet_length; int sock; int last_pinged; scalar_t__ ping_id; scalar_t__ ping_request_id; } ;
typedef TYPE_1__ TCP_Client_Connection ;


 int MAX_PACKET_SIZE ;
 void* TCP_CLIENT_DISCONNECTED ;
 int TCP_PING_FREQUENCY ;
 int TCP_PING_TIMEOUT ;
 int handle_TCP_packet (TYPE_1__*,int *,int) ;
 scalar_t__ is_timeout (int ,int ) ;
 scalar_t__ random_64b () ;
 int read_packet_TCP_secure_connection (int ,int *,int ,int ,int *,int) ;
 int send_pending_data (TYPE_1__*) ;
 int send_ping_request (TYPE_1__*) ;
 int send_ping_response (TYPE_1__*) ;
 int unix_time () ;

__attribute__((used)) static int do_confirmed_TCP(TCP_Client_Connection *conn)
{
    send_pending_data(conn);
    send_ping_response(conn);
    send_ping_request(conn);

    uint8_t packet[MAX_PACKET_SIZE];
    int len;

    if (is_timeout(conn->last_pinged, TCP_PING_FREQUENCY)) {
        uint64_t ping_id = random_64b();

        if (!ping_id)
            ++ping_id;

        conn->ping_request_id = conn->ping_id = ping_id;
        send_ping_request(conn);
        conn->last_pinged = unix_time();
    }

    if (conn->ping_id && is_timeout(conn->last_pinged, TCP_PING_TIMEOUT)) {
        conn->status = TCP_CLIENT_DISCONNECTED;
        return 0;
    }

    while ((len = read_packet_TCP_secure_connection(conn->sock, &conn->next_packet_length, conn->shared_key,
                  conn->recv_nonce, packet, sizeof(packet)))) {
        if (len == -1) {
            conn->status = TCP_CLIENT_DISCONNECTED;
            break;
        }

        if (handle_TCP_packet(conn, packet, len) == -1) {
            conn->status = TCP_CLIENT_DISCONNECTED;
            break;
        }
    }

    return 0;
}
