
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;


 int assert (void const*) ;
 scalar_t__ memcmp (void const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline void *memory_startswith(const void *p, size_t sz, const char *token) {
        size_t n;

        assert(token);

        n = strlen(token);
        if (sz < n)
                return ((void*)0);

        assert(p);

        if (memcmp(p, token, n) != 0)
                return ((void*)0);

        return (uint8_t*) p + n;
}
