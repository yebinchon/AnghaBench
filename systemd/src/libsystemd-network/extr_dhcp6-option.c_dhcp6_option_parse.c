
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int EINVAL ;
 int ENOBUFS ;
 int assert_return (int ,int ) ;
 int option_parse_hdr (int **,size_t*,int *,size_t*) ;

int dhcp6_option_parse(uint8_t **buf, size_t *buflen, uint16_t *optcode,
                       size_t *optlen, uint8_t **optvalue) {
        int r;

        assert_return(buf && buflen && optcode && optlen && optvalue, -EINVAL);

        r = option_parse_hdr(buf, buflen, optcode, optlen);
        if (r < 0)
                return r;

        if (*optlen > *buflen)
                return -ENOBUFS;

        *optvalue = *buf;
        *buflen -= *optlen;
        *buf += *optlen;

        return 0;
}
