
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio_list* bio_list; } ;


 TYPE_1__* current ;
 int vdev_submit_bio_impl (struct bio*) ;

__attribute__((used)) static inline void
vdev_submit_bio(struct bio *bio)
{
 struct bio_list *bio_list = current->bio_list;
 current->bio_list = ((void*)0);
 vdev_submit_bio_impl(bio);
 current->bio_list = bio_list;
}
