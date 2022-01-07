
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int aModule; TYPE_1__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_21__ {char** azModuleArg; int pVTable; } ;
typedef TYPE_4__ Table ;
struct TYPE_22__ {TYPE_2__* pModule; } ;
struct TYPE_19__ {scalar_t__ xCreate; scalar_t__ xDestroy; } ;
struct TYPE_18__ {int zDbSName; } ;
typedef TYPE_5__ Module ;


 scalar_t__ ALWAYS (int ) ;
 scalar_t__ IsVirtual (TYPE_4__*) ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int addToVTrans (TYPE_3__*,int ) ;
 int assert (int) ;
 int growVTrans (TYPE_3__*) ;
 TYPE_4__* sqlite3FindTable (TYPE_3__*,char const*,int ) ;
 int sqlite3GetVTable (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ sqlite3HashFind (int *,char const*) ;
 char* sqlite3MPrintf (TYPE_3__*,char*,char const*) ;
 int vtabCallConstructor (TYPE_3__*,TYPE_4__*,TYPE_5__*,scalar_t__,char**) ;

int sqlite3VtabCallCreate(sqlite3 *db, int iDb, const char *zTab, char **pzErr){
  int rc = SQLITE_OK;
  Table *pTab;
  Module *pMod;
  const char *zMod;

  pTab = sqlite3FindTable(db, zTab, db->aDb[iDb].zDbSName);
  assert( pTab && IsVirtual(pTab) && !pTab->pVTable );


  zMod = pTab->azModuleArg[0];
  pMod = (Module*)sqlite3HashFind(&db->aModule, zMod);





  if( pMod==0 || pMod->pModule->xCreate==0 || pMod->pModule->xDestroy==0 ){
    *pzErr = sqlite3MPrintf(db, "no such module: %s", zMod);
    rc = SQLITE_ERROR;
  }else{
    rc = vtabCallConstructor(db, pTab, pMod, pMod->pModule->xCreate, pzErr);
  }



  if( rc==SQLITE_OK && ALWAYS(sqlite3GetVTable(db, pTab)) ){
    rc = growVTrans(db);
    if( rc==SQLITE_OK ){
      addToVTrans(db, sqlite3GetVTable(db, pTab));
    }
  }

  return rc;
}
