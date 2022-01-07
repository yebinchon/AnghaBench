
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;



__attribute__((used)) static inline void align_pointer_offset( unsigned char **ptr, unsigned char *base, unsigned int align )
{
    ULONG_PTR mask = align - 1;
    *ptr = base + (((ULONG_PTR)(*ptr - base) + mask) & ~mask);
}
