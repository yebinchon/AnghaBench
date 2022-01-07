
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_rb_node; } ;
struct block_device {int bd_bh_root; } ;


 int rb_erase (int *,int *) ;

void buffer_head_remove(struct block_device *bdev, struct buffer_head *bh)
{
    rb_erase(&bh->b_rb_node, &bdev->bd_bh_root);
}
