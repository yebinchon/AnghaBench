
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct buffer_head {int dummy; } ;
struct block_device {struct rb_root bd_bh_root; } ;
typedef int sector_t ;


 struct buffer_head* __buffer_head_search (struct rb_root*,int ) ;

__attribute__((used)) static struct buffer_head *buffer_head_search(struct block_device *bdev,
                     sector_t blocknr)
{
    struct rb_root *root;
    root = &bdev->bd_bh_root;
    return __buffer_head_search(root, blocknr);
}
