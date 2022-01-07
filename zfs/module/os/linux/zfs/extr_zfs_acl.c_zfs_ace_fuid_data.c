
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_object_ace_t ;
struct TYPE_3__ {int z_type; } ;
struct TYPE_4__ {TYPE_1__ z_hdr; } ;
typedef TYPE_2__ zfs_ace_t ;
typedef int caddr_t ;







__attribute__((used)) static int
zfs_ace_fuid_data(void *acep, void **datap)
{
 zfs_ace_t *zacep = acep;
 zfs_object_ace_t *zobjp;

 switch (zacep->z_hdr.z_type) {
 case 131:
 case 130:
 case 128:
 case 129:
  zobjp = acep;
  *datap = (caddr_t)zobjp + sizeof (zfs_ace_t);
  return (sizeof (zfs_object_ace_t) - sizeof (zfs_ace_t));
 default:
  *datap = ((void*)0);
  return (0);
 }
}
