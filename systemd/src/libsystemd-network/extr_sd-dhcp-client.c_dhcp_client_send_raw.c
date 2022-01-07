
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link; int fd; int ip_service_type; int port; } ;
typedef TYPE_1__ sd_dhcp_client ;
typedef int DHCPPacket ;


 int DHCP_PORT_SERVER ;
 int INADDR_ANY ;
 int INADDR_BROADCAST ;
 int dhcp_network_send_raw_socket (int ,int *,int *,size_t) ;
 int dhcp_packet_append_ip_headers (int *,int ,int ,int ,int ,size_t,int ) ;

__attribute__((used)) static int dhcp_client_send_raw(
                sd_dhcp_client *client,
                DHCPPacket *packet,
                size_t len) {

        dhcp_packet_append_ip_headers(packet, INADDR_ANY, client->port,
                                      INADDR_BROADCAST, DHCP_PORT_SERVER, len, client->ip_service_type);

        return dhcp_network_send_raw_socket(client->fd, &client->link,
                                            packet, len);
}
