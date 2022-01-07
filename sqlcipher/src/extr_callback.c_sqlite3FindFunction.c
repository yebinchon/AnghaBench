
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_13__ {int mDbFlags; int aFunc; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_14__ {char const* zName; scalar_t__ xSFunc; struct TYPE_14__* pNext; scalar_t__ funcFlags; scalar_t__ nArg; } ;
typedef TYPE_2__ FuncDef ;


 int DBFLAG_PreferBuiltin ;
 int FUNC_PERFECT_MATCH ;
 int SQLITE_FUNC_HASH (scalar_t__,int) ;
 int assert (int) ;
 int matchQuality (TYPE_2__*,int,scalar_t__) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* sqlite3DbMallocZero (TYPE_1__*,int) ;
 TYPE_2__* sqlite3FunctionSearch (int,char const*) ;
 scalar_t__ sqlite3HashFind (int *,char const*) ;
 scalar_t__ sqlite3HashInsert (int *,char const*,TYPE_2__*) ;
 int sqlite3OomFault (TYPE_1__*) ;
 int sqlite3Strlen30 (char const*) ;
 scalar_t__* sqlite3UpperToLower ;

FuncDef *sqlite3FindFunction(
  sqlite3 *db,
  const char *zName,
  int nArg,
  u8 enc,
  u8 createFlag
){
  FuncDef *p;
  FuncDef *pBest = 0;
  int bestScore = 0;
  int h;
  int nName;

  assert( nArg>=(-2) );
  assert( nArg>=(-1) || createFlag==0 );
  nName = sqlite3Strlen30(zName);



  p = (FuncDef*)sqlite3HashFind(&db->aFunc, zName);
  while( p ){
    int score = matchQuality(p, nArg, enc);
    if( score>bestScore ){
      pBest = p;
      bestScore = score;
    }
    p = p->pNext;
  }
  if( !createFlag && (pBest==0 || (db->mDbFlags & DBFLAG_PreferBuiltin)!=0) ){
    bestScore = 0;
    h = SQLITE_FUNC_HASH(sqlite3UpperToLower[(u8)zName[0]], nName);
    p = sqlite3FunctionSearch(h, zName);
    while( p ){
      int score = matchQuality(p, nArg, enc);
      if( score>bestScore ){
        pBest = p;
        bestScore = score;
      }
      p = p->pNext;
    }
  }





  if( createFlag && bestScore<FUNC_PERFECT_MATCH &&
      (pBest = sqlite3DbMallocZero(db, sizeof(*pBest)+nName+1))!=0 ){
    FuncDef *pOther;
    u8 *z;
    pBest->zName = (const char*)&pBest[1];
    pBest->nArg = (u16)nArg;
    pBest->funcFlags = enc;
    memcpy((char*)&pBest[1], zName, nName+1);
    for(z=(u8*)pBest->zName; *z; z++) *z = sqlite3UpperToLower[*z];
    pOther = (FuncDef*)sqlite3HashInsert(&db->aFunc, pBest->zName, pBest);
    if( pOther==pBest ){
      sqlite3DbFree(db, pBest);
      sqlite3OomFault(db);
      return 0;
    }else{
      pBest->pNext = pOther;
    }
  }

  if( pBest && (pBest->xSFunc || createFlag) ){
    return pBest;
  }
  return 0;
}
