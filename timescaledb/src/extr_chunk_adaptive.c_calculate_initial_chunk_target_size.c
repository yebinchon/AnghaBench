
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;


 double DEFAULT_CACHE_MEMORY_SLACK ;
 scalar_t__ get_memory_cache_size () ;

__attribute__((used)) static inline int64
calculate_initial_chunk_target_size(void)
{
 return (int64)((double) get_memory_cache_size() * DEFAULT_CACHE_MEMORY_SLACK);
}
