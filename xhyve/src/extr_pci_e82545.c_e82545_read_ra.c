
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int* octet; } ;
struct eth_uni {int eu_valid; int eu_addrsel; TYPE_1__ eu_eth; } ;
struct e82545_softc {struct eth_uni* esc_uni; } ;


 int assert (int) ;

__attribute__((used)) static uint32_t
e82545_read_ra(struct e82545_softc *sc, int reg)
{
        struct eth_uni *eu;
 uint32_t retval;
 int idx;

 idx = reg >> 1;
 assert(idx < 15);

 eu = &sc->esc_uni[idx];

 if (reg & 0x1) {

  retval = (uint32_t)(eu->eu_valid << 31) |
    (uint32_t)(eu->eu_addrsel << 16) |
             (uint32_t)(eu->eu_eth.octet[5] << 8) |
    eu->eu_eth.octet[4];
 } else {

  retval = (uint32_t)(eu->eu_eth.octet[3] << 24) |
    (uint32_t)(eu->eu_eth.octet[2] << 16) |
    (uint32_t)(eu->eu_eth.octet[1] << 8) |
    eu->eu_eth.octet[0];
 }

 return (retval);
}
