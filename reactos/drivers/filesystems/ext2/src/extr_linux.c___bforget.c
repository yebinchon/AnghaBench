
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int __brelse (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;

void __bforget(struct buffer_head *bh)
{
    clear_buffer_dirty(bh);
    __brelse(bh);
}
