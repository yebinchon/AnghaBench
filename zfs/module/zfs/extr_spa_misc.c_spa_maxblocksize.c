
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int SPA_FEATURE_LARGE_BLOCKS ;
 int SPA_MAXBLOCKSIZE ;
 int SPA_OLD_MAXBLOCKSIZE ;
 scalar_t__ spa_feature_is_enabled (int *,int ) ;

int
spa_maxblocksize(spa_t *spa)
{
 if (spa_feature_is_enabled(spa, SPA_FEATURE_LARGE_BLOCKS))
  return (SPA_MAXBLOCKSIZE);
 else
  return (SPA_OLD_MAXBLOCKSIZE);
}
