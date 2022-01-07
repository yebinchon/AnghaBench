
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (void const*) ;
 void* memmem (void const*,size_t,void const*,size_t) ;

__attribute__((used)) static inline void *memmem_safe(const void *haystack, size_t haystacklen, const void *needle, size_t needlelen) {

        if (needlelen <= 0)
                return (void*) haystack;

        if (haystacklen < needlelen)
                return ((void*)0);

        assert(haystack);
        assert(needle);

        return memmem(haystack, haystacklen, needle, needlelen);
}
