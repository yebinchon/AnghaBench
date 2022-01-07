
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;



__attribute__((used)) static void *adjust_pointer(const void *p, void *old_base, size_t sz, void *new_base) {

        if (!p)
                return ((void*)0);

        if (old_base == new_base)
                return (void*) p;

        if ((uint8_t*) p < (uint8_t*) old_base)
                return (void*) p;

        if ((uint8_t*) p >= (uint8_t*) old_base + sz)
                return (void*) p;

        return (uint8_t*) new_base + ((uint8_t*) p - (uint8_t*) old_base);
}
