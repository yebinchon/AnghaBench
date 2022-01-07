
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int lsm_insert (int *,void*,int,void*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int lsmWriteStr(lsm_db *pDb, const char *zKey, const char *zVal){
  int nKey = strlen(zKey);
  int nVal = strlen(zVal);
  return lsm_insert(pDb, (void *)zKey, nKey, (void *)zVal, nVal);
}
