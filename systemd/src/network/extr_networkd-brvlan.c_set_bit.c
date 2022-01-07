
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int BRIDGE_VLAN_BITMAP_MAX ;
 unsigned int UINT32_C (int) ;

__attribute__((used)) static void set_bit(unsigned nr, uint32_t *addr) {
        if (nr < BRIDGE_VLAN_BITMAP_MAX)
                addr[nr / 32] |= (UINT32_C(1) << (nr % 32));
}
