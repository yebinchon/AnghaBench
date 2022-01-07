
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct buffer_head* get_block_bh_pin (struct block_device*,int ,unsigned long,int) ;

struct buffer_head *
get_block_bh(
    struct block_device * bdev,
    sector_t block,
    unsigned long size,
    int zero
)
{
    return get_block_bh_pin(bdev, block, size, zero);
}
