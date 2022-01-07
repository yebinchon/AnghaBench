
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* pvBuffer; unsigned int cbBuffer; } ;
typedef TYPE_1__ SecBuffer ;
typedef int SOCKET ;


 int recv (int ,char*,unsigned int,int ) ;
 int skip (char*) ;

__attribute__((used)) static int receive_data(SOCKET sock, SecBuffer *buf)
{
    unsigned received = 0;

    while (1)
    {
        unsigned char *data = buf->pvBuffer;
        unsigned expected = 0;
        int ret;

        ret = recv(sock, (char *)data+received, buf->cbBuffer-received, 0);
        if (ret == -1)
        {
            skip("recv failed\n");
            return -1;
        }
        else if(ret == 0)
        {
            skip("connection closed\n");
            return -1;
        }
        received += ret;

        while (expected < received)
        {
            unsigned frame_size = 5 + ((data[3]<<8) | data[4]);
            expected += frame_size;
            data += frame_size;
        }

        if (expected == received)
            break;
    }

    buf->cbBuffer = received;

    return received;
}
