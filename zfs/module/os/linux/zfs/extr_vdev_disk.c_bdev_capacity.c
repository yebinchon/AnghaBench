
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct block_device {int bd_inode; } ;


 int i_size_read (int ) ;

__attribute__((used)) static uint64_t
bdev_capacity(struct block_device *bdev)
{
 return (i_size_read(bdev->bd_inode));
}
