
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ szTemp; scalar_t__ szTempLimit; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef void* sqlite3_int64 ;
struct TYPE_5__ {void* sz; TYPE_1__* pRbu; } ;
typedef TYPE_2__ rbu_file ;
typedef scalar_t__ i64 ;


 int SQLITE_FULL ;
 int SQLITE_OK ;
 int assert (int) ;

__attribute__((used)) static int rbuUpdateTempSize(rbu_file *pFd, sqlite3_int64 nNew){
  sqlite3rbu *pRbu = pFd->pRbu;
  i64 nDiff = nNew - pFd->sz;
  pRbu->szTemp += nDiff;
  pFd->sz = nNew;
  assert( pRbu->szTemp>=0 );
  if( pRbu->szTempLimit && pRbu->szTemp>pRbu->szTempLimit ) return SQLITE_FULL;
  return SQLITE_OK;
}
