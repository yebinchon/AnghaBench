
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int nfs_check_exportfs () ;
 int nfs_exportfs_temp_fd ;

__attribute__((used)) static boolean_t
nfs_available(void)
{
 if (nfs_exportfs_temp_fd == -1)
  (void) nfs_check_exportfs();

 return ((nfs_exportfs_temp_fd != -1) ? B_TRUE : B_FALSE);
}
