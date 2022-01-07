
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_teardown_lock; scalar_t__ z_unmounted; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int EBUSY ;
 int RW_READER ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 scalar_t__ getzfsvfs (char const*,TYPE_1__**) ;
 int rrm_enter (int *,int ,void*) ;
 int rrm_exit (int *,void*) ;
 int zfsvfs_create (char const*,int ,TYPE_1__**) ;

__attribute__((used)) static int
zfsvfs_hold(const char *name, void *tag, zfsvfs_t **zfvp, boolean_t writer)
{
 int error = 0;

 if (getzfsvfs(name, zfvp) != 0)
  error = zfsvfs_create(name, B_FALSE, zfvp);
 if (error == 0) {
  rrm_enter(&(*zfvp)->z_teardown_lock, (writer) ? RW_WRITER :
      RW_READER, tag);
  if ((*zfvp)->z_unmounted) {





   rrm_exit(&(*zfvp)->z_teardown_lock, tag);
   return (SET_ERROR(EBUSY));
  }
 }
 return (error);
}
