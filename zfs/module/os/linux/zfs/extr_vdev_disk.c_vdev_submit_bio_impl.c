
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int submit_bio (int ,...) ;

__attribute__((used)) static inline void
vdev_submit_bio_impl(struct bio *bio)
{



 submit_bio(0, bio);

}
