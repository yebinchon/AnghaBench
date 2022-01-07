
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int DNODE_MAX_SIZE ;
 int DNODE_MIN_SIZE ;
 int SPA_FEATURE_LARGE_DNODE ;
 scalar_t__ spa_feature_is_enabled (int *,int ) ;

int
spa_maxdnodesize(spa_t *spa)
{
 if (spa_feature_is_enabled(spa, SPA_FEATURE_LARGE_DNODE))
  return (DNODE_MAX_SIZE);
 else
  return (DNODE_MIN_SIZE);
}
