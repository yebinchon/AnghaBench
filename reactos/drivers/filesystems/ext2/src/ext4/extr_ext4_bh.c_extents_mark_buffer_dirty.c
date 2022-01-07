
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int set_buffer_dirty (struct buffer_head*) ;

void extents_mark_buffer_dirty(struct buffer_head *bh)
{
    set_buffer_dirty(bh);
}
