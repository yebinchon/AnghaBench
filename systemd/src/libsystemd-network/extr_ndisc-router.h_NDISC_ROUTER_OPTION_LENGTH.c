
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sd_ndisc_router ;


 scalar_t__ NDISC_ROUTER_OPTION_DATA (int const*) ;

__attribute__((used)) static inline size_t NDISC_ROUTER_OPTION_LENGTH(const sd_ndisc_router *rt) {
        return ((uint8_t*) NDISC_ROUTER_OPTION_DATA(rt))[1] * 8;
}
