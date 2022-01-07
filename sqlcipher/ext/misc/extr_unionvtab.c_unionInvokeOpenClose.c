
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int db; scalar_t__ pOpenClose; scalar_t__ bHasContext; } ;
typedef TYPE_1__ UnionTab ;
struct TYPE_6__ {int zContext; int zFile; } ;
typedef TYPE_2__ UnionSrc ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int sqlite3_bind_int (scalar_t__,scalar_t__,int) ;
 int sqlite3_bind_text (scalar_t__,int,int ,int,int ) ;
 int sqlite3_errmsg (int ) ;
 char* sqlite3_mprintf (char*,int ) ;
 int sqlite3_reset (scalar_t__) ;
 int sqlite3_step (scalar_t__) ;

__attribute__((used)) static int unionInvokeOpenClose(
  UnionTab *pTab,
  UnionSrc *pSrc,
  int bClose,
  char **pzErr
){
  int rc = SQLITE_OK;
  if( pTab->pOpenClose ){
    sqlite3_bind_text(pTab->pOpenClose, 1, pSrc->zFile, -1, SQLITE_STATIC);
    if( pTab->bHasContext ){
      sqlite3_bind_text(pTab->pOpenClose, 2, pSrc->zContext, -1, SQLITE_STATIC);
    }
    sqlite3_bind_int(pTab->pOpenClose, 2+pTab->bHasContext, bClose);
    sqlite3_step(pTab->pOpenClose);
    if( SQLITE_OK!=(rc = sqlite3_reset(pTab->pOpenClose)) ){
      if( pzErr ){
        *pzErr = sqlite3_mprintf("%s", sqlite3_errmsg(pTab->db));
      }
    }
  }
  return rc;
}
