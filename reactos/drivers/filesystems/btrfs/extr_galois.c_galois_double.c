
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int galois_double_mask32 (int) ;
 int galois_double_mask64 (int) ;

void galois_double(uint8_t* data, uint32_t len) {
    while (len > sizeof(uint32_t)) {
        uint32_t v = *((uint32_t*)data), vv;

        vv = (v << 1) & 0xfefefefe;
        vv ^= galois_double_mask32(v) & 0x1d1d1d1d;
        *((uint32_t*)data) = vv;

        data += sizeof(uint32_t);
        len -= sizeof(uint32_t);
    }


    while (len > 0) {
        data[0] = (data[0] << 1) ^ ((data[0] & 0x80) ? 0x1d : 0);
        data++;
        len--;
    }
}
