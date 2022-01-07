
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_4__ {int rindex; } ;
typedef TYPE_1__ sd_ndisc_router ;


 scalar_t__ NDISC_ROUTER_RAW (TYPE_1__ const*) ;

__attribute__((used)) static inline void *NDISC_ROUTER_OPTION_DATA(const sd_ndisc_router *rt) {
        return ((uint8_t*) NDISC_ROUTER_RAW(rt)) + rt->rindex;
}
