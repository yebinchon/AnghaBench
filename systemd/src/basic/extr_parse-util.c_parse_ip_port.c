
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int EINVAL ;
 int safe_atou16 (char const*,scalar_t__*) ;

int parse_ip_port(const char *s, uint16_t *ret) {
        uint16_t l;
        int r;

        r = safe_atou16(s, &l);
        if (r < 0)
                return r;

        if (l == 0)
                return -EINVAL;

        *ret = (uint16_t) l;

        return 0;
}
