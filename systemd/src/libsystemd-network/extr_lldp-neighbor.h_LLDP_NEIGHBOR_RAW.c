
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
typedef int sd_lldp_neighbor ;


 int ALIGN (int) ;

__attribute__((used)) static inline void *LLDP_NEIGHBOR_RAW(const sd_lldp_neighbor *n) {
        return (uint8_t*) n + ALIGN(sizeof(sd_lldp_neighbor));
}
