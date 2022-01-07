
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;


 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static inline void align_pointer_clear( unsigned char **ptr, unsigned int align )
{
    ULONG_PTR mask = align - 1;
    memset( *ptr, 0, (align - (ULONG_PTR)*ptr) & mask );
    *ptr = (unsigned char *)(((ULONG_PTR)*ptr + mask) & ~mask);
}
