
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio {int dummy; } ;
struct TYPE_4__ {int dr_bio_count; int ** dr_bio; scalar_t__ dr_error; int dr_ref; } ;
typedef TYPE_1__ dio_request_t ;


 int KM_SLEEP ;
 int atomic_set (int *,int ) ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static dio_request_t *
vdev_disk_dio_alloc(int bio_count)
{
 dio_request_t *dr;
 int i;

 dr = kmem_zalloc(sizeof (dio_request_t) +
     sizeof (struct bio *) * bio_count, KM_SLEEP);
 if (dr) {
  atomic_set(&dr->dr_ref, 0);
  dr->dr_bio_count = bio_count;
  dr->dr_error = 0;

  for (i = 0; i < dr->dr_bio_count; i++)
   dr->dr_bio[i] = ((void*)0);
 }

 return (dr);
}
