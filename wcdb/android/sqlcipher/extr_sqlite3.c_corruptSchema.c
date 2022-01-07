
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_7__ {scalar_t__* pzErrMsg; int mInitFlags; void* rc; TYPE_1__* db; } ;
typedef TYPE_2__ InitData ;


 int INITFLAG_AlterTable ;
 void* SQLITE_CORRUPT_BKPT ;
 void* SQLITE_ERROR ;
 void* SQLITE_NOMEM_BKPT ;
 int SQLITE_WriteSchema ;
 scalar_t__ sqlite3DbStrDup (TYPE_1__*,char const*) ;
 char* sqlite3MPrintf (TYPE_1__*,char*,char const*,...) ;

__attribute__((used)) static void corruptSchema(
  InitData *pData,
  const char *zObj,
  const char *zExtra
){
  sqlite3 *db = pData->db;
  if( db->mallocFailed ){
    pData->rc = SQLITE_NOMEM_BKPT;
  }else if( pData->pzErrMsg[0]!=0 ){

  }else if( pData->mInitFlags & INITFLAG_AlterTable ){
    *pData->pzErrMsg = sqlite3DbStrDup(db, zExtra);
    pData->rc = SQLITE_ERROR;
  }else if( db->flags & SQLITE_WriteSchema ){
    pData->rc = SQLITE_CORRUPT_BKPT;
  }else{
    char *z;
    if( zObj==0 ) zObj = "?";
    z = sqlite3MPrintf(db, "malformed database schema (%s)", zObj);
    if( zExtra && zExtra[0] ) z = sqlite3MPrintf(db, "%z - %s", z, zExtra);
    *pData->pzErrMsg = z;
    pData->rc = SQLITE_CORRUPT_BKPT;
  }
}
