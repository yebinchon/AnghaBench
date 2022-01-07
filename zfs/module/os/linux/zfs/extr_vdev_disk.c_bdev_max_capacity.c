
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct block_device {int bd_inode; struct block_device* bd_contains; int * bd_part; } ;
typedef scalar_t__ int64_t ;


 int EFI_MIN_RESV_SIZE ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int NEW_START_BLOCK ;
 int PARTITION_END_ALIGNMENT ;
 int SECTOR_BITS ;
 scalar_t__ bdev_capacity (struct block_device*) ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static uint64_t
bdev_max_capacity(struct block_device *bdev, uint64_t wholedisk)
{
 uint64_t psize;
 int64_t available;

 if (wholedisk && bdev->bd_part != ((void*)0) && bdev != bdev->bd_contains) {
  available = i_size_read(bdev->bd_contains->bd_inode) -
      ((EFI_MIN_RESV_SIZE + NEW_START_BLOCK +
      PARTITION_END_ALIGNMENT) << SECTOR_BITS);
  psize = MAX(available, bdev_capacity(bdev));
 } else {
  psize = bdev_capacity(bdev);
 }

 return (psize);
}
