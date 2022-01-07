
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int fatal (int *,int ,char*,char*,int) ;
 int spa_open (char*,int **,void*) ;
 scalar_t__ spa_version (int *) ;
 int strerror (int) ;
 int zfeature_checks_disable ;
 int zhack_import (char*,int ) ;

__attribute__((used)) static void
zhack_spa_open(char *target, boolean_t readonly, void *tag, spa_t **spa)
{
 int err;

 zhack_import(target, readonly);

 zfeature_checks_disable = B_TRUE;
 err = spa_open(target, spa, tag);
 zfeature_checks_disable = B_FALSE;

 if (err != 0)
  fatal(*spa, FTAG, "cannot open '%s': %s", target,
      strerror(err));
 if (spa_version(*spa) < SPA_VERSION_FEATURES) {
  fatal(*spa, FTAG, "'%s' has version %d, features not enabled",
      target, (int)spa_version(*spa));
 }
}
