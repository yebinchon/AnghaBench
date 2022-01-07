
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_deadlist_t ;


 int dsl_deadlist_iterate (int *,int ,void*) ;
 int livelist_entry_count_blocks_cb ;

__attribute__((used)) static void
livelist_count_blocks(dsl_deadlist_t *ll, void *arg)
{
 dsl_deadlist_iterate(ll, livelist_entry_count_blocks_cb, arg);
}
