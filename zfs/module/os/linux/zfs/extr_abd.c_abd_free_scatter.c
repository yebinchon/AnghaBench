
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ abd_size; int abd_children; } ;
typedef TYPE_1__ abd_t ;


 int ABDSTAT_BUMPDOWN (int ) ;
 int ABDSTAT_INCR (int ,int) ;
 scalar_t__ P2ROUNDUP (scalar_t__,int ) ;
 int PAGESIZE ;
 int abd_free_pages (TYPE_1__*) ;
 int abd_free_struct (TYPE_1__*) ;
 int abdstat_scatter_chunk_waste ;
 int abdstat_scatter_cnt ;
 int abdstat_scatter_data_size ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
abd_free_scatter(abd_t *abd)
{
 abd_free_pages(abd);

 zfs_refcount_destroy(&abd->abd_children);
 ABDSTAT_BUMPDOWN(abdstat_scatter_cnt);
 ABDSTAT_INCR(abdstat_scatter_data_size, -(int)abd->abd_size);
 ABDSTAT_INCR(abdstat_scatter_chunk_waste,
     (int)abd->abd_size - (int)P2ROUNDUP(abd->abd_size, PAGESIZE));

 abd_free_struct(abd);
}
