
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memdup (void const*,size_t) ;
 scalar_t__ size_multiply_overflow (size_t,size_t) ;

__attribute__((used)) static inline void *memdup_multiply(const void *p, size_t size, size_t need) {
        if (size_multiply_overflow(size, need))
                return ((void*)0);

        return memdup(p, size * need);
}
