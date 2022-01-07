
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nColumn; scalar_t__** azColumn; } ;
typedef TYPE_1__ fulltext_vtab ;


 scalar_t__ memcmp (scalar_t__*,char const*,int) ;

__attribute__((used)) static int checkColumnSpecifier(
  fulltext_vtab *pVtab,
  const char *zToken,
  int nToken
){
  int i;
  for(i=0; i<pVtab->nColumn; i++){
    if( memcmp(pVtab->azColumn[i], zToken, nToken)==0
        && pVtab->azColumn[i][nToken]==0 ){
      return i;
    }
  }
  return -1;
}
