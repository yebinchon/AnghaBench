
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int packet ;
typedef int TCP_Client_Connection ;


 int TCP_PACKET_DISCONNECT_NOTIFICATION ;
 int write_packet_TCP_secure_connection (int *,int *,int,int) ;

__attribute__((used)) static int send_disconnect_notification(TCP_Client_Connection *con, uint8_t id)
{
    uint8_t packet[1 + 1];
    packet[0] = TCP_PACKET_DISCONNECT_NOTIFICATION;
    packet[1] = id;
    return write_packet_TCP_secure_connection(con, packet, sizeof(packet), 1);
}
