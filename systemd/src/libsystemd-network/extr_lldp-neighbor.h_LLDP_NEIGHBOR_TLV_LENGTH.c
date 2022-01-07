
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int rindex; } ;
typedef TYPE_1__ sd_lldp_neighbor ;


 scalar_t__ LLDP_NEIGHBOR_RAW (TYPE_1__ const*) ;

__attribute__((used)) static inline size_t LLDP_NEIGHBOR_TLV_LENGTH(const sd_lldp_neighbor *n) {
        uint8_t *p;

        p = (uint8_t*) LLDP_NEIGHBOR_RAW(n) + n->rindex;
        return p[1] + (((size_t) (p[0] & 1)) << 8);
}
