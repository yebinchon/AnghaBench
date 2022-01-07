
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
struct request_queue {int dummy; } ;
struct block_device {int dummy; } ;
struct bio {int * bi_private; int bi_end_io; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_NOIO ;
 int SET_ERROR (int ) ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int bio_set_flush (struct bio*) ;
 int invalidate_bdev (struct block_device*) ;
 scalar_t__ unlikely (int ) ;
 int vdev_disk_io_flush_completion ;
 int vdev_submit_bio (struct bio*) ;

__attribute__((used)) static int
vdev_disk_io_flush(struct block_device *bdev, zio_t *zio)
{
 struct request_queue *q;
 struct bio *bio;

 q = bdev_get_queue(bdev);
 if (!q)
  return (SET_ERROR(ENXIO));

 bio = bio_alloc(GFP_NOIO, 0);

 if (unlikely(bio == ((void*)0)))
  return (SET_ERROR(ENOMEM));

 bio->bi_end_io = vdev_disk_io_flush_completion;
 bio->bi_private = zio;
 bio_set_dev(bio, bdev);
 bio_set_flush(bio);
 vdev_submit_bio(bio);
 invalidate_bdev(bdev);

 return (0);
}
