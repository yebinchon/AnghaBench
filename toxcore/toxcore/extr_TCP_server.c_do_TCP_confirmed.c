
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef int ping ;
struct TYPE_9__ {scalar_t__ status; scalar_t__ last_pinged; scalar_t__ ping_id; } ;
struct TYPE_8__ {scalar_t__ last_run_pinged; size_t size_accepted_connections; TYPE_2__* accepted_connection_array; } ;
typedef TYPE_1__ TCP_Server ;
typedef TYPE_2__ TCP_Secure_Connection ;


 int TCP_PACKET_PING ;
 scalar_t__ TCP_PING_FREQUENCY ;
 scalar_t__ TCP_PING_TIMEOUT ;
 scalar_t__ TCP_STATUS_CONFIRMED ;
 int do_confirmed_recv (TYPE_1__*,size_t) ;
 scalar_t__ is_timeout (scalar_t__,scalar_t__) ;
 int kill_accepted (TYPE_1__*,size_t) ;
 int memcpy (int *,scalar_t__*,int) ;
 scalar_t__ random_64b () ;
 int send_pending_data (TYPE_2__*) ;
 scalar_t__ unix_time () ;
 int write_packet_TCP_secure_connection (TYPE_2__*,int *,int,int) ;

__attribute__((used)) static void do_TCP_confirmed(TCP_Server *TCP_server)
{







    uint32_t i;

    for (i = 0; i < TCP_server->size_accepted_connections; ++i) {
        TCP_Secure_Connection *conn = &TCP_server->accepted_connection_array[i];

        if (conn->status != TCP_STATUS_CONFIRMED)
            continue;

        if (is_timeout(conn->last_pinged, TCP_PING_FREQUENCY)) {
            uint8_t ping[1 + sizeof(uint64_t)];
            ping[0] = TCP_PACKET_PING;
            uint64_t ping_id = random_64b();

            if (!ping_id)
                ++ping_id;

            memcpy(ping + 1, &ping_id, sizeof(uint64_t));
            int ret = write_packet_TCP_secure_connection(conn, ping, sizeof(ping), 1);

            if (ret == 1) {
                conn->last_pinged = unix_time();
                conn->ping_id = ping_id;
            } else {
                if (is_timeout(conn->last_pinged, TCP_PING_FREQUENCY + TCP_PING_TIMEOUT)) {
                    kill_accepted(TCP_server, i);
                    continue;
                }
            }
        }

        if (conn->ping_id && is_timeout(conn->last_pinged, TCP_PING_TIMEOUT)) {
            kill_accepted(TCP_server, i);
            continue;
        }

        send_pending_data(conn);



        do_confirmed_recv(TCP_server, i);


    }
}
