
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;



__attribute__((used)) static inline void align_pointer( unsigned char **ptr, unsigned int align )
{
    ULONG_PTR mask = align - 1;
    *ptr = (unsigned char *)(((ULONG_PTR)*ptr + mask) & ~mask);
}
