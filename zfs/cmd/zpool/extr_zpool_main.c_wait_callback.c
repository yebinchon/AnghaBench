
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_wait_activity_t ;
typedef int zpool_handle_t ;


 int zpool_wait (int *,int ) ;

__attribute__((used)) static int
wait_callback(zpool_handle_t *zhp, void *data)
{
 zpool_wait_activity_t *act = data;
 return (zpool_wait(zhp, *act));
}
