
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned char in_addr ;


 int ERANGE ;
 int assert (unsigned char const*) ;

int in4_addr_default_prefixlen(const struct in_addr *addr, unsigned char *prefixlen) {
        uint8_t msb_octet = *(uint8_t*) addr;



        assert(addr);
        assert(prefixlen);

        if (msb_octet < 128)

                *prefixlen = 8;
        else if (msb_octet < 192)

                *prefixlen = 16;
        else if (msb_octet < 224)

                *prefixlen = 24;
        else

                return -ERANGE;

        return 0;
}
