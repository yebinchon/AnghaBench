
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int minor_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int ZFSDEV_MAX_MINOR ;
 int ZST_ALL ;
 int * zfsdev_get_state_impl (int,int ) ;
 int zfsdev_state_lock ;

minor_t
zfsdev_minor_alloc(void)
{
 static minor_t last_minor = 0;
 minor_t m;

 ASSERT(MUTEX_HELD(&zfsdev_state_lock));

 for (m = last_minor + 1; m != last_minor; m++) {
  if (m > ZFSDEV_MAX_MINOR)
   m = 1;
  if (zfsdev_get_state_impl(m, ZST_ALL) == ((void*)0)) {
   last_minor = m;
   return (m);
  }
 }

 return (0);
}
