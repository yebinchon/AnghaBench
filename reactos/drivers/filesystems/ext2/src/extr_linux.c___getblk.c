
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct buffer_head* get_block_bh (struct block_device*,int ,unsigned long,int ) ;

struct buffer_head *
__getblk(
    struct block_device * bdev,
    sector_t block,
    unsigned long size
)
{
    return get_block_bh(bdev, block, size, 0);
}
