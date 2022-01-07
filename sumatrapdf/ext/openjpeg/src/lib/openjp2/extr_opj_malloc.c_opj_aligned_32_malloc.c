
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* opj_aligned_alloc_n (unsigned int,size_t) ;

void *opj_aligned_32_malloc(size_t size)
{
    return opj_aligned_alloc_n(32U, size);
}
