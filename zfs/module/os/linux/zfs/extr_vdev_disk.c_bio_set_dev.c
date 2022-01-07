
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
struct bio {struct block_device* bi_bdev; } ;



__attribute__((used)) static inline void
bio_set_dev(struct bio *bio, struct block_device *bdev)
{
 bio->bi_bdev = bdev;
}
