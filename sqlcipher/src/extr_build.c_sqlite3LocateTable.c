
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int mDbFlags; int aModule; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Table ;
struct TYPE_14__ {int * pEpoTab; } ;
struct TYPE_13__ {scalar_t__ disableVtab; int checkSchema; TYPE_1__* db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Module ;


 int DBFLAG_SchemaKnownOk ;
 scalar_t__ IsVirtual (int *) ;
 int LOCATE_NOERR ;
 int LOCATE_VIEW ;
 scalar_t__ SQLITE_OK ;
 int sqlite3ErrorMsg (TYPE_2__*,char*,char const*,char const*,...) ;
 int * sqlite3FindTable (TYPE_1__*,char const*,char const*) ;
 scalar_t__ sqlite3HashFind (int *,char const*) ;
 TYPE_3__* sqlite3PragmaVtabRegister (TYPE_1__*,char const*) ;
 scalar_t__ sqlite3ReadSchema (TYPE_2__*) ;
 scalar_t__ sqlite3VtabEponymousTableInit (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ sqlite3_strnicmp (char const*,char*,int) ;

Table *sqlite3LocateTable(
  Parse *pParse,
  u32 flags,
  const char *zName,
  const char *zDbase
){
  Table *p;
  sqlite3 *db = pParse->db;



  if( (db->mDbFlags & DBFLAG_SchemaKnownOk)==0
   && SQLITE_OK!=sqlite3ReadSchema(pParse)
  ){
    return 0;
  }

  p = sqlite3FindTable(db, zName, zDbase);
  if( p==0 ){




    if( pParse->disableVtab==0 ){
      Module *pMod = (Module*)sqlite3HashFind(&db->aModule, zName);
      if( pMod==0 && sqlite3_strnicmp(zName, "pragma_", 7)==0 ){
        pMod = sqlite3PragmaVtabRegister(db, zName);
      }
      if( pMod && sqlite3VtabEponymousTableInit(pParse, pMod) ){
        return pMod->pEpoTab;
      }
    }

    if( flags & LOCATE_NOERR ) return 0;
    pParse->checkSchema = 1;
  }else if( IsVirtual(p) && pParse->disableVtab ){
    p = 0;
  }

  if( p==0 ){
    const char *zMsg = flags & LOCATE_VIEW ? "no such view" : "no such table";
    if( zDbase ){
      sqlite3ErrorMsg(pParse, "%s: %s.%s", zMsg, zDbase, zName);
    }else{
      sqlite3ErrorMsg(pParse, "%s: %s", zMsg, zName);
    }
  }

  return p;
}
