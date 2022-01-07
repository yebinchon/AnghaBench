
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char16_t ;


 int assert (scalar_t__ const*) ;

size_t char16_strlen(const char16_t *s) {
        size_t n = 0;

        assert(s);

        while (*s != 0)
                n++, s++;

        return n;
}
