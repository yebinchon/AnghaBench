
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zChannel ;
typedef int sqlite_int64 ;
typedef int sqlite3_blob ;
typedef int sqlite3 ;
typedef int Tcl_Interp ;
struct TYPE_6__ {int channel; TYPE_1__* pDb; struct TYPE_6__* pPrev; struct TYPE_6__* pNext; int * pBlob; scalar_t__ iSeek; } ;
struct TYPE_5__ {TYPE_2__* pIncrblob; int * db; } ;
typedef TYPE_1__ SqliteDb ;
typedef TYPE_2__ IncrblobChannel ;


 int IncrblobChannelType ;
 int SQLITE_OK ;
 int TCL_ERROR ;
 int TCL_OK ;
 int TCL_READABLE ;
 int TCL_VOLATILE ;
 int TCL_WRITABLE ;
 scalar_t__ Tcl_Alloc (int) ;
 int Tcl_CreateChannel (int *,char*,TYPE_2__*,int) ;
 scalar_t__ Tcl_GetChannelName (int ) ;
 int Tcl_RegisterChannel (int *,int ) ;
 int Tcl_SetResult (int *,char*,int ) ;
 int sqlite3_blob_open (int *,char const*,char const*,char const*,int ,int,int **) ;
 scalar_t__ sqlite3_errmsg (int *) ;
 int sqlite3_snprintf (int,char*,char*,int) ;

__attribute__((used)) static int createIncrblobChannel(
  Tcl_Interp *interp,
  SqliteDb *pDb,
  const char *zDb,
  const char *zTable,
  const char *zColumn,
  sqlite_int64 iRow,
  int isReadonly
){
  IncrblobChannel *p;
  sqlite3 *db = pDb->db;
  sqlite3_blob *pBlob;
  int rc;
  int flags = TCL_READABLE|(isReadonly ? 0 : TCL_WRITABLE);


  static int count = 0;
  char zChannel[64];

  rc = sqlite3_blob_open(db, zDb, zTable, zColumn, iRow, !isReadonly, &pBlob);
  if( rc!=SQLITE_OK ){
    Tcl_SetResult(interp, (char *)sqlite3_errmsg(pDb->db), TCL_VOLATILE);
    return TCL_ERROR;
  }

  p = (IncrblobChannel *)Tcl_Alloc(sizeof(IncrblobChannel));
  p->iSeek = 0;
  p->pBlob = pBlob;

  sqlite3_snprintf(sizeof(zChannel), zChannel, "incrblob_%d", ++count);
  p->channel = Tcl_CreateChannel(&IncrblobChannelType, zChannel, p, flags);
  Tcl_RegisterChannel(interp, p->channel);


  p->pNext = pDb->pIncrblob;
  p->pPrev = 0;
  if( p->pNext ){
    p->pNext->pPrev = p;
  }
  pDb->pIncrblob = p;
  p->pDb = pDb;

  Tcl_SetResult(interp, (char *)Tcl_GetChannelName(p->channel), TCL_VOLATILE);
  return TCL_OK;
}
