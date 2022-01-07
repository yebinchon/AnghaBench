
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
typedef int sd_ndisc_router ;


 int ALIGN (int) ;

__attribute__((used)) static inline void* NDISC_ROUTER_RAW(const sd_ndisc_router *rt) {
        return (uint8_t*) rt + ALIGN(sizeof(sd_ndisc_router));
}
