
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dr_ref; } ;
typedef TYPE_1__ dio_request_t ;


 int atomic_inc (int *) ;

__attribute__((used)) static void
vdev_disk_dio_get(dio_request_t *dr)
{
 atomic_inc(&dr->dr_ref);
}
