
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 unsigned long INT_MAX ;
 unsigned long USEC_PER_SEC ;
 int isdigit (char const) ;
 int parse_fractional_part_u (char const**,int,unsigned int*) ;
 int parse_one_number (char const*,char const**,unsigned long*) ;

__attribute__((used)) static int parse_component_decimal(const char **p, bool usec, int *res) {
        unsigned long value;
        const char *e = ((void*)0);
        int r;

        if (!isdigit(**p))
                return -EINVAL;

        r = parse_one_number(*p, &e, &value);
        if (r < 0)
                return r;

        if (usec) {
                if (value * USEC_PER_SEC / USEC_PER_SEC != value)
                        return -ERANGE;

                value *= USEC_PER_SEC;


                if (e[0] == '.' && e[1] != '.') {
                        unsigned add;

                        e++;
                        r = parse_fractional_part_u(&e, 6, &add);
                        if (r < 0)
                                return r;

                        if (add + value < value)
                                return -ERANGE;
                        value += add;
                }
        }

        if (value > INT_MAX)
                return -ERANGE;

        *p = e;
        *res = value;

        return 0;
}
