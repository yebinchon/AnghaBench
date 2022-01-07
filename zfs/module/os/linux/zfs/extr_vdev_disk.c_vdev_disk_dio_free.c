
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio {int dummy; } ;
struct TYPE_4__ {int dr_bio_count; scalar_t__* dr_bio; } ;
typedef TYPE_1__ dio_request_t ;


 int bio_put (scalar_t__) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
vdev_disk_dio_free(dio_request_t *dr)
{
 int i;

 for (i = 0; i < dr->dr_bio_count; i++)
  if (dr->dr_bio[i])
   bio_put(dr->dr_bio[i]);

 kmem_free(dr, sizeof (dio_request_t) +
     sizeof (struct bio *) * dr->dr_bio_count);
}
