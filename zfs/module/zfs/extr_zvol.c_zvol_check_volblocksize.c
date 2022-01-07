
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int spa_t ;


 int EDOM ;
 int ENOTSUP ;
 int FTAG ;
 int ISP2 (scalar_t__) ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_LARGE_BLOCKS ;
 scalar_t__ SPA_MAXBLOCKSIZE ;
 scalar_t__ SPA_MINBLOCKSIZE ;
 scalar_t__ SPA_OLD_MAXBLOCKSIZE ;
 int spa_close (int *,int ) ;
 int spa_feature_is_enabled (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 scalar_t__ zfs_max_recordsize ;

int
zvol_check_volblocksize(const char *name, uint64_t volblocksize)
{

 if (volblocksize > SPA_OLD_MAXBLOCKSIZE) {
  spa_t *spa;
  int error;

  if ((error = spa_open(name, &spa, FTAG)) != 0)
   return (error);

  if (!spa_feature_is_enabled(spa, SPA_FEATURE_LARGE_BLOCKS)) {
   spa_close(spa, FTAG);
   return (SET_ERROR(ENOTSUP));
  }





  if (volblocksize > zfs_max_recordsize)
   return (SET_ERROR(EDOM));

  spa_close(spa, FTAG);
 }

 if (volblocksize < SPA_MINBLOCKSIZE ||
     volblocksize > SPA_MAXBLOCKSIZE ||
     !ISP2(volblocksize))
  return (SET_ERROR(EDOM));

 return (0);
}
