
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lr_read_cv; scalar_t__ lr_read_wanted; int lr_write_cv; scalar_t__ lr_write_wanted; } ;
typedef TYPE_1__ zfs_locked_range_t ;


 int cv_destroy (int *) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
zfs_rangelock_free(zfs_locked_range_t *lr)
{
 if (lr->lr_write_wanted)
  cv_destroy(&lr->lr_write_cv);

 if (lr->lr_read_wanted)
  cv_destroy(&lr->lr_read_cv);

 kmem_free(lr, sizeof (zfs_locked_range_t));
}
