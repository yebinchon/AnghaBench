
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nColumn; char** azColl; scalar_t__* aiColumn; } ;
typedef TYPE_1__ Index ;


 int assert (int) ;
 scalar_t__ sqlite3StrICmp (char const*,char const*) ;

__attribute__((used)) static int collationMatch(const char *zColl, Index *pIndex){
  int i;
  assert( zColl!=0 );
  for(i=0; i<pIndex->nColumn; i++){
    const char *z = pIndex->azColl[i];
    assert( z!=0 || pIndex->aiColumn[i]<0 );
    if( pIndex->aiColumn[i]>=0 && 0==sqlite3StrICmp(z, zColl) ){
      return 1;
    }
  }
  return 0;
}
