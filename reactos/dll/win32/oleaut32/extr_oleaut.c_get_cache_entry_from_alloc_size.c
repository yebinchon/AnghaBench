
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr_cache_entry_t ;
typedef unsigned int SIZE_T ;


 unsigned int BUCKET_SIZE ;
 int * get_cache_entry_from_idx (unsigned int) ;

__attribute__((used)) static inline bstr_cache_entry_t *get_cache_entry_from_alloc_size(SIZE_T alloc_size)
{
    unsigned cache_idx;
    if (alloc_size < BUCKET_SIZE) return ((void*)0);
    cache_idx = (alloc_size - BUCKET_SIZE) / BUCKET_SIZE;
    return get_cache_entry_from_idx(cache_idx);
}
