
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef int vdev_t ;


 int INT_MAX ;
 int zio_handle_device_injection_impl (int *,int *,int,int ) ;

int
zio_handle_device_injection(vdev_t *vd, zio_t *zio, int error)
{
 return (zio_handle_device_injection_impl(vd, zio, error, INT_MAX));
}
