
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int data ;
typedef int TCP_Secure_Connection ;


 scalar_t__ NUM_RESERVED_PORTS ;
 scalar_t__ TCP_PACKET_CONNECTION_NOTIFICATION ;
 int write_packet_TCP_secure_connection (int *,scalar_t__*,int,int) ;

__attribute__((used)) static int send_connect_notification(TCP_Secure_Connection *con, uint8_t id)
{
    uint8_t data[2] = {TCP_PACKET_CONNECTION_NOTIFICATION, id + NUM_RESERVED_PORTS};
    return write_packet_TCP_secure_connection(con, data, sizeof(data), 1);
}
