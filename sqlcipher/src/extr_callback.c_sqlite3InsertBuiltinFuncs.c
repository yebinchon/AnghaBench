
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__** a; } ;
struct TYPE_6__ {TYPE_2__* pHash; } ;
struct TYPE_7__ {char* zName; TYPE_1__ u; struct TYPE_7__* pNext; } ;
typedef TYPE_2__ FuncDef ;


 int SQLITE_FUNC_HASH (char const,int) ;
 int assert (int) ;
 TYPE_5__ sqlite3BuiltinFunctions ;
 TYPE_2__* sqlite3FunctionSearch (int,char const*) ;
 int sqlite3Strlen30 (char const*) ;

void sqlite3InsertBuiltinFuncs(
  FuncDef *aDef,
  int nDef
){
  int i;
  for(i=0; i<nDef; i++){
    FuncDef *pOther;
    const char *zName = aDef[i].zName;
    int nName = sqlite3Strlen30(zName);
    int h = SQLITE_FUNC_HASH(zName[0], nName);
    assert( zName[0]>='a' && zName[0]<='z' );
    pOther = sqlite3FunctionSearch(h, zName);
    if( pOther ){
      assert( pOther!=&aDef[i] && pOther->pNext!=&aDef[i] );
      aDef[i].pNext = pOther->pNext;
      pOther->pNext = &aDef[i];
    }else{
      aDef[i].pNext = 0;
      aDef[i].u.pHash = sqlite3BuiltinFunctions.a[h];
      sqlite3BuiltinFunctions.a[h] = &aDef[i];
    }
  }
}
