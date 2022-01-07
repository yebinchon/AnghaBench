
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
typedef void* u16 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int e ;
struct TYPE_10__ {int crc32; int szCompressed; int szUncompressed; int iExternalAttr; size_t iOffset; int nFile; char* zFile; void* iCompression; int flags; int iVersionExtract; int iVersionMadeBy; } ;
struct TYPE_8__ {TYPE_5__ cds; scalar_t__ mUnixTime; } ;
typedef TYPE_1__ ZipfileEntry ;
struct TYPE_11__ {size_t n; int * a; } ;
struct TYPE_9__ {int nEntry; TYPE_6__ cds; TYPE_6__ body; } ;
typedef TYPE_2__ ZipfileCtx ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int ZIPFILE_CDS_FIXED_SZ ;
 int ZIPFILE_LFH_FIXED_SZ ;
 int ZIPFILE_NEWENTRY_FLAGS ;
 int ZIPFILE_NEWENTRY_MADEBY ;
 int ZIPFILE_NEWENTRY_REQUIRED ;
 int crc32 (int ,char const*,int) ;
 int memcpy (int *,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_code (int *,int) ;
 char* sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 int zipfileBufferGrow (TYPE_6__*,int) ;
 int zipfileDeflate (char const*,int,char**,int*,char**) ;
 int zipfileGetMode (int *,int,int*,char**) ;
 scalar_t__ zipfileGetTime (int *) ;
 int zipfileMtimeToDos (TYPE_5__*,int) ;
 scalar_t__ zipfileSerializeCDS (TYPE_1__*,int *) ;
 scalar_t__ zipfileSerializeLFH (TYPE_1__*,int *) ;

void zipfileStep(sqlite3_context *pCtx, int nVal, sqlite3_value **apVal){
  ZipfileCtx *p;
  ZipfileEntry e;

  sqlite3_value *pName = 0;
  sqlite3_value *pMode = 0;
  sqlite3_value *pMtime = 0;
  sqlite3_value *pData = 0;
  sqlite3_value *pMethod = 0;

  int bIsDir = 0;
  u32 mode;
  int rc = SQLITE_OK;
  char *zErr = 0;

  int iMethod = -1;

  const u8 *aData = 0;
  int nData = 0;
  int szUncompressed = 0;
  u8 *aFree = 0;
  u32 iCrc32 = 0;

  char *zName = 0;
  int nName = 0;
  char *zFree = 0;
  int nByte;

  memset(&e, 0, sizeof(e));
  p = (ZipfileCtx*)sqlite3_aggregate_context(pCtx, sizeof(ZipfileCtx));
  if( p==0 ) return;


  if( nVal!=2 && nVal!=4 && nVal!=5 ){
    zErr = sqlite3_mprintf("wrong number of arguments to function zipfile()");
    rc = SQLITE_ERROR;
    goto zipfile_step_out;
  }
  pName = apVal[0];
  if( nVal==2 ){
    pData = apVal[1];
  }else{
    pMode = apVal[1];
    pMtime = apVal[2];
    pData = apVal[3];
    if( nVal==5 ){
      pMethod = apVal[4];
    }
  }


  zName = (char*)sqlite3_value_text(pName);
  nName = sqlite3_value_bytes(pName);
  if( zName==0 ){
    zErr = sqlite3_mprintf("first argument to zipfile() must be non-NULL");
    rc = SQLITE_ERROR;
    goto zipfile_step_out;
  }



  if( pMethod && SQLITE_NULL!=sqlite3_value_type(pMethod) ){
    iMethod = (int)sqlite3_value_int64(pMethod);
    if( iMethod!=0 && iMethod!=8 ){
      zErr = sqlite3_mprintf("illegal method value: %d", iMethod);
      rc = SQLITE_ERROR;
      goto zipfile_step_out;
    }
  }




  if( sqlite3_value_type(pData)==SQLITE_NULL ){
    bIsDir = 1;
    iMethod = 0;
  }else{
    aData = sqlite3_value_blob(pData);
    szUncompressed = nData = sqlite3_value_bytes(pData);
    iCrc32 = crc32(0, aData, nData);
    if( iMethod<0 || iMethod==8 ){
      int nOut = 0;
      rc = zipfileDeflate(aData, nData, &aFree, &nOut, &zErr);
      if( rc!=SQLITE_OK ){
        goto zipfile_step_out;
      }
      if( iMethod==8 || nOut<nData ){
        aData = aFree;
        nData = nOut;
        iMethod = 8;
      }else{
        iMethod = 0;
      }
    }
  }


  rc = zipfileGetMode(pMode, bIsDir, &mode, &zErr);
  if( rc ) goto zipfile_step_out;


  e.mUnixTime = zipfileGetTime(pMtime);




  if( bIsDir==0 ){
    if( zName[nName-1]=='/' ){
      zErr = sqlite3_mprintf("non-directory name must not end with /");
      rc = SQLITE_ERROR;
      goto zipfile_step_out;
    }
  }else{
    if( zName[nName-1]!='/' ){
      zName = zFree = sqlite3_mprintf("%s/", zName);
      nName++;
      if( zName==0 ){
        rc = SQLITE_NOMEM;
        goto zipfile_step_out;
      }
    }else{
      while( nName>1 && zName[nName-2]=='/' ) nName--;
    }
  }


  e.cds.iVersionMadeBy = ZIPFILE_NEWENTRY_MADEBY;
  e.cds.iVersionExtract = ZIPFILE_NEWENTRY_REQUIRED;
  e.cds.flags = ZIPFILE_NEWENTRY_FLAGS;
  e.cds.iCompression = (u16)iMethod;
  zipfileMtimeToDos(&e.cds, (u32)e.mUnixTime);
  e.cds.crc32 = iCrc32;
  e.cds.szCompressed = nData;
  e.cds.szUncompressed = szUncompressed;
  e.cds.iExternalAttr = (mode<<16);
  e.cds.iOffset = p->body.n;
  e.cds.nFile = (u16)nName;
  e.cds.zFile = zName;


  nByte = ZIPFILE_LFH_FIXED_SZ + e.cds.nFile + 9;
  if( (rc = zipfileBufferGrow(&p->body, nByte)) ) goto zipfile_step_out;
  p->body.n += zipfileSerializeLFH(&e, &p->body.a[p->body.n]);


  if( nData>0 ){
    if( (rc = zipfileBufferGrow(&p->body, nData)) ) goto zipfile_step_out;
    memcpy(&p->body.a[p->body.n], aData, nData);
    p->body.n += nData;
  }


  nByte = ZIPFILE_CDS_FIXED_SZ + e.cds.nFile + 9;
  if( (rc = zipfileBufferGrow(&p->cds, nByte)) ) goto zipfile_step_out;
  p->cds.n += zipfileSerializeCDS(&e, &p->cds.a[p->cds.n]);


  p->nEntry++;

 zipfile_step_out:
  sqlite3_free(aFree);
  sqlite3_free(zFree);
  if( rc ){
    if( zErr ){
      sqlite3_result_error(pCtx, zErr, -1);
    }else{
      sqlite3_result_error_code(pCtx, rc);
    }
  }
  sqlite3_free(zErr);
}
