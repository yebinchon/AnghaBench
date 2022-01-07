
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int IN_SET (int,int ,int) ;
 int assert (int ) ;

__attribute__((used)) static inline size_t FAMILY_ADDRESS_SIZE(int family) {
        assert(IN_SET(family, AF_INET, AF_INET6));
        return family == AF_INET6 ? 16 : 4;
}
