
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int sock_t ;


 scalar_t__ MAX_PACKET_SIZE ;
 int MSG_NOSIGNAL ;
 unsigned int TCP_socket_data_recv_buffer (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ ntohs (scalar_t__) ;
 int recv (int ,int *,int,int ) ;
 int stderr ;

uint16_t read_TCP_length(sock_t sock)
{
    unsigned int count = TCP_socket_data_recv_buffer(sock);

    if (count >= sizeof(uint16_t)) {
        uint16_t length;
        int len = recv(sock, (uint8_t *)&length, sizeof(uint16_t), MSG_NOSIGNAL);

        if (len != sizeof(uint16_t)) {
            fprintf(stderr, "FAIL recv packet\n");
            return 0;
        }

        length = ntohs(length);

        if (length > MAX_PACKET_SIZE) {
            return ~0;
        }

        return length;
    }

    return 0;
}
