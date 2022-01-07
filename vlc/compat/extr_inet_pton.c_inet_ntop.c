
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;



 int EAFNOSUPPORT ;
 int ENOSPC ;
 int errno ;
 int snprintf (char*,int ,char*,unsigned char const,unsigned char const,unsigned char const,unsigned char const) ;

const char *inet_ntop (int af, const void *src, char *dst, socklen_t len)
{
    const unsigned char *b = src;

    switch (af)
    {
        case 128:
            if (snprintf (dst, len, "%hhu.%hhu.%hhu.%hhu",
                          b[0], b[1], b[2], b[3]) >= len)
            {
                errno = ENOSPC;
                return ((void*)0);
            }
            return dst;
    }
    errno = EAFNOSUPPORT;
    return ((void*)0);
}
