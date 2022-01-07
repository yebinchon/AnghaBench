
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int clear_buffer_locked (struct buffer_head*) ;

void unlock_buffer(struct buffer_head *bh)
{
    clear_buffer_locked(bh);
}
