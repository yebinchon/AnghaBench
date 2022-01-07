
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int zColl; int zName; } ;
struct TYPE_7__ {size_t iCol; scalar_t__ bDesc; int zColl; } ;
struct TYPE_6__ {TYPE_3__* aCol; } ;
typedef TYPE_1__ IdxTable ;
typedef TYPE_2__ IdxConstraint ;
typedef TYPE_3__ IdxColumn ;


 char* idxAppendText (int*,char*,char*,...) ;
 scalar_t__ idxIdentifierRequiresQuotes (int ) ;
 scalar_t__ sqlite3_stricmp (int ,int ) ;

__attribute__((used)) static char *idxAppendColDefn(
  int *pRc,
  char *zIn,
  IdxTable *pTab,
  IdxConstraint *pCons
){
  char *zRet = zIn;
  IdxColumn *p = &pTab->aCol[pCons->iCol];
  if( zRet ) zRet = idxAppendText(pRc, zRet, ", ");

  if( idxIdentifierRequiresQuotes(p->zName) ){
    zRet = idxAppendText(pRc, zRet, "%Q", p->zName);
  }else{
    zRet = idxAppendText(pRc, zRet, "%s", p->zName);
  }

  if( sqlite3_stricmp(p->zColl, pCons->zColl) ){
    if( idxIdentifierRequiresQuotes(pCons->zColl) ){
      zRet = idxAppendText(pRc, zRet, " COLLATE %Q", pCons->zColl);
    }else{
      zRet = idxAppendText(pRc, zRet, " COLLATE %s", pCons->zColl);
    }
  }

  if( pCons->bDesc ){
    zRet = idxAppendText(pRc, zRet, " DESC");
  }
  return zRet;
}
