
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_10__ {scalar_t__ xCmp; } ;
struct TYPE_9__ {int rc; int * db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ CollSeq ;


 int SQLITE_ERROR_MISSING_COLLSEQ ;
 int assert (int) ;
 int callCollNeeded (int *,int ,char const*) ;
 int sqlite3ErrorMsg (TYPE_1__*,char*,char const*) ;
 TYPE_2__* sqlite3FindCollSeq (int *,int ,char const*,int ) ;
 scalar_t__ synthCollSeq (int *,TYPE_2__*) ;

CollSeq *sqlite3GetCollSeq(
  Parse *pParse,
  u8 enc,
  CollSeq *pColl,
  const char *zName
){
  CollSeq *p;
  sqlite3 *db = pParse->db;

  p = pColl;
  if( !p ){
    p = sqlite3FindCollSeq(db, enc, zName, 0);
  }
  if( !p || !p->xCmp ){



    callCollNeeded(db, enc, zName);
    p = sqlite3FindCollSeq(db, enc, zName, 0);
  }
  if( p && !p->xCmp && synthCollSeq(db, p) ){
    p = 0;
  }
  assert( !p || p->xCmp );
  if( p==0 ){
    sqlite3ErrorMsg(pParse, "no such collation sequence: %s", zName);
    pParse->rc = SQLITE_ERROR_MISSING_COLLSEQ;
  }
  return p;
}
