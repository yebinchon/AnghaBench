
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;


 scalar_t__ ascii_tolower (char const) ;
 int assert (void const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline void *memory_startswith_no_case(const void *p, size_t sz, const char *token) {
        size_t n, i;

        assert(token);

        n = strlen(token);
        if (sz < n)
                return ((void*)0);

        assert(p);

        for (i = 0; i < n; i++) {
                if (ascii_tolower(((char *)p)[i]) != ascii_tolower(token[i]))
                        return ((void*)0);
        }

        return (uint8_t*) p + n;
}
