
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;
typedef int sock_t ;


 int MSG_NOSIGNAL ;
 unsigned int TCP_socket_data_recv_buffer (int ) ;
 int fprintf (int ,char*) ;
 int recv (int ,int *,unsigned int,int ) ;
 int stderr ;

int read_TCP_packet(sock_t sock, uint8_t *data, uint16_t length)
{
    unsigned int count = TCP_socket_data_recv_buffer(sock);

    if (count >= length) {
        int len = recv(sock, data, length, MSG_NOSIGNAL);

        if (len != length) {
            fprintf(stderr, "FAIL recv packet\n");
            return -1;
        }

        return len;
    }

    return -1;
}
