
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_rb_node; } ;
struct block_device {int bd_bh_root; } ;


 int buffer_head_blocknr_cmp ;
 int rb_insert (int *,int *,int ) ;

__attribute__((used)) static void buffer_head_insert(struct block_device *bdev, struct buffer_head *bh)
{
    rb_insert(&bdev->bd_bh_root, &bh->b_rb_node, buffer_head_blocknr_cmp);
}
