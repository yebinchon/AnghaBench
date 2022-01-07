
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_4__ {int rindex; } ;
typedef TYPE_1__ sd_lldp_neighbor ;


 scalar_t__ LLDP_NEIGHBOR_RAW (TYPE_1__ const*) ;

__attribute__((used)) static inline void* LLDP_NEIGHBOR_TLV_DATA(const sd_lldp_neighbor *n) {
        return ((uint8_t*) LLDP_NEIGHBOR_RAW(n)) + n->rindex + 2;
}
