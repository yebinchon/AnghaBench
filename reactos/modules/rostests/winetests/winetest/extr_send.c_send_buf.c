
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int SOCKET_ERROR ;
 int send (int ,char const*,size_t,int ) ;

__attribute__((used)) static int
send_buf (SOCKET s, const char *buf, size_t length)
{
    int sent;

    while (length > 0) {
        sent = send (s, buf, length, 0);
        if (sent == SOCKET_ERROR) return 1;
        buf += sent;
        length -= sent;
    }
    return 0;
}
