
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ip ;
struct TYPE_4__ {int port; int ip; } ;
struct TYPE_5__ {int last_packet_length; scalar_t__ last_packet_sent; scalar_t__ last_packet; TYPE_1__ ip_port; } ;
typedef TYPE_2__ TCP_Client_Connection ;


 int INET6_ADDRSTRLEN ;
 int const MAX_PACKET_SIZE ;
 int ip_parse_addr (int *,char*,int) ;
 int ntohs (int ) ;
 int snprintf (char*,int const,char*,char*,char*,int const,char*,char*,int const,char*) ;

__attribute__((used)) static int proxy_http_generate_connection_request(TCP_Client_Connection *TCP_conn)
{
    char one[] = "CONNECT ";
    char two[] = " HTTP/1.1\nHost: ";
    char three[] = "\r\n\r\n";

    char ip[INET6_ADDRSTRLEN];

    if (!ip_parse_addr(&TCP_conn->ip_port.ip, ip, sizeof(ip))) {
        return 0;
    }

    const uint16_t port = ntohs(TCP_conn->ip_port.port);
    const int written = snprintf((char *)TCP_conn->last_packet, MAX_PACKET_SIZE, "%s%s:%hu%s%s:%hu%s", one, ip, port, two,
                                 ip, port, three);

    if (written < 0 || MAX_PACKET_SIZE < written) {
        return 0;
    }

    TCP_conn->last_packet_length = written;
    TCP_conn->last_packet_sent = 0;

    return 1;
}
