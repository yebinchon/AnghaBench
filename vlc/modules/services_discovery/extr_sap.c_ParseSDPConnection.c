
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {void* ss_len; void* ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
typedef void* socklen_t ;


 void* AF_INET ;
 void* AF_INET6 ;
 int inet_pton (void*,char*,int *) ;
 int sscanf (char const*,char*,unsigned int*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int ParseSDPConnection (const char *str, struct sockaddr_storage *addr,
                               socklen_t *addrlen, unsigned *number)
{
    char host[60];
    unsigned fam, n1, n2;

    int res = sscanf (str, "IN IP%u %59[^/]/%u/%u", &fam, host, &n1, &n2);
    if (res < 2)
        return -1;

    switch (fam)
    {
        case 4:
            addr->ss_family = AF_INET;



           *addrlen = sizeof (struct sockaddr_in);

            if (inet_pton (AF_INET, host,
                           &((struct sockaddr_in *)addr)->sin_addr) <= 0)
                return -1;

            *number = (res >= 4) ? n2 : 1;
            break;

        default:
            return -1;
    }
    return 0;
}
