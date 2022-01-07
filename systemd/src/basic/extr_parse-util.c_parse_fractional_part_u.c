
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIGITS ;
 int EINVAL ;
 int strspn (char const*,int ) ;

int parse_fractional_part_u(const char **p, size_t digits, unsigned *res) {
        size_t i;
        unsigned val = 0;
        const char *s;

        s = *p;


        for (i=0; i < digits; i++,s++) {
                if (*s < '0' || *s > '9') {
                        if (i == 0)
                                return -EINVAL;


                        for (; i < digits; i++)
                                val *= 10;

                        break;
                }

                val *= 10;
                val += *s - '0';
        }


        if (*s >= '5' && *s <= '9')
                val++;

        s += strspn(s, DIGITS);

        *p = s;
        *res = val;

        return 0;
}
