
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dhcp6_prefixes; } ;
typedef struct in6_addr Manager ;
typedef int Link ;


 int assert_return (struct in6_addr*,int *) ;
 int * hashmap_get (int ,struct in6_addr*) ;

__attribute__((used)) static Link *dhcp6_prefix_get(Manager *m, struct in6_addr *addr) {
        assert_return(m, ((void*)0));
        assert_return(addr, ((void*)0));

        return hashmap_get(m->dhcp6_prefixes, addr);
}
