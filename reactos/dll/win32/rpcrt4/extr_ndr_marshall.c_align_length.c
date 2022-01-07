
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ULONG ;



__attribute__((used)) static inline void align_length( ULONG *len, unsigned int align )
{
    *len = (*len + align - 1) & ~(align - 1);
}
