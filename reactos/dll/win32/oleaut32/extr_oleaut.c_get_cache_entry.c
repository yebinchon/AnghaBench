
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bstr_cache_entry_t ;
typedef int WCHAR ;
struct TYPE_2__ {int * ptr; } ;


 unsigned int BUCKET_SIZE ;
 unsigned int FIELD_OFFSET (int ,int ) ;
 int bstr_t ;
 int * get_cache_entry_from_idx (unsigned int) ;
 TYPE_1__ u ;

__attribute__((used)) static inline bstr_cache_entry_t *get_cache_entry(size_t size)
{
    unsigned cache_idx = FIELD_OFFSET(bstr_t, u.ptr[size+sizeof(WCHAR)-1])/BUCKET_SIZE;
    return get_cache_entry_from_idx(cache_idx);
}
