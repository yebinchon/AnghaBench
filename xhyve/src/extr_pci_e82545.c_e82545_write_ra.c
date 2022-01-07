
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* u_char ;
struct TYPE_2__ {void** octet; } ;
struct eth_uni {int eu_valid; int eu_addrsel; TYPE_1__ eu_eth; } ;
struct e82545_softc {struct eth_uni* esc_uni; } ;


 int E1000_RAH_AV ;
 int assert (int) ;

__attribute__((used)) static void
e82545_write_ra(struct e82545_softc *sc, int reg, uint32_t wval)
{
        struct eth_uni *eu;
 int idx;

 idx = reg >> 1;
 assert(idx < 15);

 eu = &sc->esc_uni[idx];

 if (reg & 0x1) {

  eu->eu_valid = ((wval & E1000_RAH_AV) == E1000_RAH_AV);
  eu->eu_addrsel = (wval >> 16) & 0x3;
  eu->eu_eth.octet[5] = (u_char)(wval >> 8);
  eu->eu_eth.octet[4] = (u_char)wval;
 } else {

  eu->eu_eth.octet[3] = (u_char)(wval >> 24);
  eu->eu_eth.octet[2] = (u_char)(wval >> 16);
  eu->eu_eth.octet[1] = (u_char)(wval >> 8);
  eu->eu_eth.octet[0] = (u_char)wval;
 }
}
