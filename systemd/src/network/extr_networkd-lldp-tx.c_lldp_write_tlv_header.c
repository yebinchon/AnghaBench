
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EBADMSG ;
 int ENOBUFS ;
 int assert (int**) ;

__attribute__((used)) static int lldp_write_tlv_header(uint8_t **p, uint8_t id, size_t sz) {
        assert(p);

        if (id > 127)
                return -EBADMSG;
        if (sz > 511)
                return -ENOBUFS;

        (*p)[0] = (id << 1) | !!(sz & 256);
        (*p)[1] = sz & 255;

        *p = *p + 2;
        return 0;
}
