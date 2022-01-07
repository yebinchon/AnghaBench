
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_9__ {scalar_t__ xCmp; char* zName; } ;
struct TYPE_8__ {int * db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ CollSeq ;


 int ENC (int *) ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 TYPE_2__* sqlite3GetCollSeq (TYPE_1__*,int ,TYPE_2__*,char const*) ;

int sqlite3CheckCollSeq(Parse *pParse, CollSeq *pColl){
  if( pColl && pColl->xCmp==0 ){
    const char *zName = pColl->zName;
    sqlite3 *db = pParse->db;
    CollSeq *p = sqlite3GetCollSeq(pParse, ENC(db), pColl, zName);
    if( !p ){
      return SQLITE_ERROR;
    }
    assert( p==pColl );
  }
  return SQLITE_OK;
}
