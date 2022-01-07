
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;


 int SHUT_WR ;
 int assert (int) ;
 scalar_t__ recv (int,char*,int,int ) ;
 int shutdown (int,int ) ;
 int sscanf (char*,char*,char*,unsigned int*,...) ;
 int strcmp (char*,char*) ;
 size_t strlen (char const*) ;
 int * strnstr (char*,char*,size_t) ;
 int * strstr (char*,char*) ;
 scalar_t__ write (int,char const*,size_t) ;

__attribute__((used)) static void proxy_client_process(int fd)
{
    char buf[1024];
    size_t buflen = 0;
    ssize_t val;


    while (strnstr(buf, "\r\n\r\n", buflen) == ((void*)0))
    {
        val = recv(fd, buf + buflen, sizeof (buf) - buflen - 1, 0);
        if (val <= 0)
            assert(!"Incomplete request");
        buflen += val;
    }

    buf[buflen] = '\0';

    char host[64];
    unsigned port, ver;
    int offset;

    assert(sscanf(buf, "CONNECT %63[^:]:%u HTTP/1.%1u%n", host, &port, &ver,
                  &offset) == 3);
    assert(!strcmp(host, "www.example.com"));
    assert(port == 443);
    assert(ver == 1);

    assert(sscanf(buf + offset + 2, "Host: %63[^:]:%u", host, &port) == 2);
    assert(!strcmp(host, "www.example.com"));
    assert(port == 443);

    assert(strstr(buf, "\r\nProxy-Authorization: Basic "
                  "QWxhZGRpbjpvcGVuIHNlc2FtZQ==\r\n") != ((void*)0));

    const char resp[] = "HTTP/1.1 500 Failure\r\n\r\n";

    val = write(fd, resp, strlen(resp));
    assert((size_t)val == strlen(resp));
    shutdown(fd, SHUT_WR);
}
