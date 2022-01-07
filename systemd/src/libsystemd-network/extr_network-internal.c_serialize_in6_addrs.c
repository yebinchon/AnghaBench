
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
typedef int buffer ;
typedef int FILE ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int assert (size_t) ;
 int fputc (char,int *) ;
 int fputs (int ,int *) ;
 int inet_ntop (int ,struct in6_addr const*,char*,int) ;

void serialize_in6_addrs(FILE *f, const struct in6_addr *addresses, size_t size) {
        unsigned i;

        assert(f);
        assert(addresses);
        assert(size);

        for (i = 0; i < size; i++) {
                char buffer[INET6_ADDRSTRLEN];

                fputs(inet_ntop(AF_INET6, addresses+i, buffer, sizeof(buffer)), f);

                if (i < size - 1)
                        fputc(' ', f);
        }
}
