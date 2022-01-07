
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int ABDSTAT_INCR (int ,int) ;
 int abd_cache ;
 int abdstat_struct_size ;
 int kmem_cache_free (int ,int *) ;

__attribute__((used)) static inline void
abd_free_struct(abd_t *abd)
{
 kmem_cache_free(abd_cache, abd);
 ABDSTAT_INCR(abdstat_struct_size, -(int)sizeof (abd_t));
}
