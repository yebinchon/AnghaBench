
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_relatime; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int uint64_t ;



__attribute__((used)) static void
relatime_changed_cb(void *arg, uint64_t newval)
{
 ((zfsvfs_t *)arg)->z_relatime = newval;
}
