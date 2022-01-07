
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ascii_tolower (char const) ;

int ascii_strcasecmp_n(const char *a, const char *b, size_t n) {

        for (; n > 0; a++, b++, n--) {
                int x, y;

                x = (int) (uint8_t) ascii_tolower(*a);
                y = (int) (uint8_t) ascii_tolower(*b);

                if (x != y)
                        return x - y;
        }

        return 0;
}
