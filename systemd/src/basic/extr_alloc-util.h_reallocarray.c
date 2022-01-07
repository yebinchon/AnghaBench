
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,int) ;
 scalar_t__ size_multiply_overflow (size_t,size_t) ;

__attribute__((used)) static inline void *reallocarray(void *p, size_t need, size_t size) {
        if (size_multiply_overflow(size, need))
                return ((void*)0);

        return realloc(p, size * need ?: 1);
}
