
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int minor_t ;
typedef enum zfsdev_state_type { ____Placeholder_zfsdev_state_type } zfsdev_state_type ;


 void* zfsdev_get_state_impl (int ,int) ;

void *
zfsdev_get_state(minor_t minor, enum zfsdev_state_type which)
{
 void *ptr;

 ptr = zfsdev_get_state_impl(minor, which);

 return (ptr);
}
