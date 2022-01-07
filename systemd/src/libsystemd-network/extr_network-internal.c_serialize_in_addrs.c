
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int sbuf ;
typedef struct in_addr const FILE ;


 int AF_INET ;
 int INET_ADDRSTRLEN ;
 int assert (struct in_addr const*) ;
 int fputc (char,struct in_addr const*) ;
 int fputs (int ,struct in_addr const*) ;
 int inet_ntop (int ,struct in_addr const*,char*,int) ;

size_t serialize_in_addrs(FILE *f,
                          const struct in_addr *addresses,
                          size_t size,
                          bool with_leading_space,
                          bool (*predicate)(const struct in_addr *addr)) {
        size_t count;
        size_t i;

        assert(f);
        assert(addresses);

        count = 0;

        for (i = 0; i < size; i++) {
                char sbuf[INET_ADDRSTRLEN];

                if (predicate && !predicate(&addresses[i]))
                        continue;
                if (with_leading_space)
                        fputc(' ', f);
                else
                        with_leading_space = 1;
                fputs(inet_ntop(AF_INET, &addresses[i], sbuf, sizeof(sbuf)), f);
                count++;
        }

        return count;
}
