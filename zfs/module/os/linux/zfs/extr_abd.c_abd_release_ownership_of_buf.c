
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abd_flags; scalar_t__ abd_size; } ;
typedef TYPE_1__ abd_t ;


 int ABDSTAT_BUMPDOWN (int ) ;
 int ABDSTAT_INCR (int ,int) ;
 int ABD_FLAG_META ;
 int ABD_FLAG_OWNER ;
 int ASSERT (int) ;
 int abd_is_linear (TYPE_1__*) ;
 int abd_is_linear_page (TYPE_1__*) ;
 int abd_verify (TYPE_1__*) ;
 int abdstat_linear_cnt ;
 int abdstat_linear_data_size ;

void
abd_release_ownership_of_buf(abd_t *abd)
{
 ASSERT(abd_is_linear(abd));
 ASSERT(abd->abd_flags & ABD_FLAG_OWNER);
 ASSERT(!abd_is_linear_page(abd));

 abd_verify(abd);

 abd->abd_flags &= ~ABD_FLAG_OWNER;

 abd->abd_flags &= ~ABD_FLAG_META;

 ABDSTAT_BUMPDOWN(abdstat_linear_cnt);
 ABDSTAT_INCR(abdstat_linear_data_size, -(int)abd->abd_size);
}
