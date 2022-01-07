
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef scalar_t__ i64 ;
struct TYPE_5__ {scalar_t__ rc; int zTab; int zDb; } ;
typedef TYPE_1__ RtreeCheck ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int rtreeCheckAppendMsg (TYPE_1__*,char*,char const*,scalar_t__,scalar_t__) ;
 int * rtreeCheckPrepare (TYPE_1__*,char*,int ,int ,char const*) ;
 scalar_t__ sqlite3_column_int64 (int *,int ) ;
 scalar_t__ sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void rtreeCheckCount(RtreeCheck *pCheck, const char *zTbl, i64 nExpect){
  if( pCheck->rc==SQLITE_OK ){
    sqlite3_stmt *pCount;
    pCount = rtreeCheckPrepare(pCheck, "SELECT count(*) FROM %Q.'%q%s'",
        pCheck->zDb, pCheck->zTab, zTbl
    );
    if( pCount ){
      if( sqlite3_step(pCount)==SQLITE_ROW ){
        i64 nActual = sqlite3_column_int64(pCount, 0);
        if( nActual!=nExpect ){
          rtreeCheckAppendMsg(pCheck, "Wrong number of entries in %%%s table"
              " - expected %lld, actual %lld" , zTbl, nExpect, nActual
          );
        }
      }
      pCheck->rc = sqlite3_finalize(pCount);
    }
  }
}
