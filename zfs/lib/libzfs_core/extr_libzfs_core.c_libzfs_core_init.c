
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int ZFS_DEV ;
 int errno ;
 scalar_t__ g_fd ;
 int g_lock ;
 scalar_t__ g_refcount ;
 int libzfs_core_debug_ioc () ;
 scalar_t__ open (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
libzfs_core_init(void)
{
 (void) pthread_mutex_lock(&g_lock);
 if (g_refcount == 0) {
  g_fd = open(ZFS_DEV, O_RDWR);
  if (g_fd < 0) {
   (void) pthread_mutex_unlock(&g_lock);
   return (errno);
  }
 }
 g_refcount++;




 (void) pthread_mutex_unlock(&g_lock);
 return (0);
}
