
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int flags; int enc; TYPE_1__* db; } ;
struct TYPE_6__ {int mutex; } ;
typedef TYPE_2__ Mem ;


 int MEM_Str ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_UTF16BE ;
 int SQLITE_UTF16LE ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3VdbeMemIsRowSet (TYPE_2__*) ;
 int sqlite3VdbeMemTranslate (TYPE_2__*,int ) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

int sqlite3VdbeChangeEncoding(Mem *pMem, int desiredEnc){

  int rc;

  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  assert( desiredEnc==SQLITE_UTF8 || desiredEnc==SQLITE_UTF16LE
           || desiredEnc==SQLITE_UTF16BE );
  if( !(pMem->flags&MEM_Str) || pMem->enc==desiredEnc ){
    return SQLITE_OK;
  }
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );







  rc = sqlite3VdbeMemTranslate(pMem, (u8)desiredEnc);
  assert(rc==SQLITE_OK || rc==SQLITE_NOMEM);
  assert(rc==SQLITE_OK || pMem->enc!=desiredEnc);
  assert(rc==SQLITE_NOMEM || pMem->enc==desiredEnc);
  return rc;

}
