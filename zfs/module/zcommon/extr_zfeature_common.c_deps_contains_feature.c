
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ spa_feature_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ const SPA_FEATURE_NONE ;

__attribute__((used)) static boolean_t
deps_contains_feature(const spa_feature_t *deps, const spa_feature_t feature)
{
 for (int i = 0; deps[i] != SPA_FEATURE_NONE; i++)
  if (deps[i] == feature)
   return (B_TRUE);

 return (B_FALSE);
}
