#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  int u32 ;
typedef  void* u16 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  e ;
struct TYPE_10__ {int crc32; int szCompressed; int szUncompressed; int iExternalAttr; size_t iOffset; int nFile; char* zFile; void* iCompression; int /*<<< orphan*/  flags; int /*<<< orphan*/  iVersionExtract; int /*<<< orphan*/  iVersionMadeBy; } ;
struct TYPE_8__ {TYPE_5__ cds; scalar_t__ mUnixTime; } ;
typedef  TYPE_1__ ZipfileEntry ;
struct TYPE_11__ {size_t n; int /*<<< orphan*/ * a; } ;
struct TYPE_9__ {int /*<<< orphan*/  nEntry; TYPE_6__ cds; TYPE_6__ body; } ;
typedef  TYPE_2__ ZipfileCtx ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int ZIPFILE_CDS_FIXED_SZ ; 
 int ZIPFILE_LFH_FIXED_SZ ; 
 int /*<<< orphan*/  ZIPFILE_NEWENTRY_FLAGS ; 
 int /*<<< orphan*/  ZIPFILE_NEWENTRY_MADEBY ; 
 int /*<<< orphan*/  ZIPFILE_NEWENTRY_REQUIRED ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_6__*,int) ; 
 int FUNC14 (char const*,int,char**,int*,char**) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,int*,char**) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC20(sqlite3_context *pCtx, int nVal, sqlite3_value **apVal){
  ZipfileCtx *p;                  /* Aggregate function context */
  ZipfileEntry e;                 /* New entry to add to zip archive */

  sqlite3_value *pName = 0;
  sqlite3_value *pMode = 0;
  sqlite3_value *pMtime = 0;
  sqlite3_value *pData = 0;
  sqlite3_value *pMethod = 0;

  int bIsDir = 0;
  u32 mode;
  int rc = SQLITE_OK;
  char *zErr = 0;

  int iMethod = -1;               /* Compression method to use (0 or 8) */

  const u8 *aData = 0;            /* Possibly compressed data for new entry */
  int nData = 0;                  /* Size of aData[] in bytes */
  int szUncompressed = 0;         /* Size of data before compression */
  u8 *aFree = 0;                  /* Free this before returning */
  u32 iCrc32 = 0;                 /* crc32 of uncompressed data */

  char *zName = 0;                /* Path (name) of new entry */
  int nName = 0;                  /* Size of zName in bytes */
  char *zFree = 0;                /* Free this before returning */
  int nByte;

  FUNC2(&e, 0, sizeof(e));
  p = (ZipfileCtx*)FUNC3(pCtx, sizeof(ZipfileCtx));
  if( p==0 ) return;

  /* Martial the arguments into stack variables */
  if( nVal!=2 && nVal!=4 && nVal!=5 ){
    zErr = FUNC5("wrong number of arguments to function zipfile()");
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

  /* Check that the 'name' parameter looks ok. */
  zName = (char*)FUNC11(pName);
  nName = FUNC9(pName);
  if( zName==0 ){
    zErr = FUNC5("first argument to zipfile() must be non-NULL");
    rc = SQLITE_ERROR;
    goto zipfile_step_out;
  }

  /* Inspect the 'method' parameter. This must be either 0 (store), 8 (use
  ** deflate compression) or NULL (choose automatically).  */
  if( pMethod && SQLITE_NULL!=FUNC12(pMethod) ){
    iMethod = (int)FUNC10(pMethod);
    if( iMethod!=0 && iMethod!=8 ){
      zErr = FUNC5("illegal method value: %d", iMethod);
      rc = SQLITE_ERROR;
      goto zipfile_step_out;
    }
  }

  /* Now inspect the data. If this is NULL, then the new entry must be a
  ** directory.  Otherwise, figure out whether or not the data should
  ** be deflated or simply stored in the zip archive. */
  if( FUNC12(pData)==SQLITE_NULL ){
    bIsDir = 1;
    iMethod = 0;
  }else{
    aData = FUNC8(pData);
    szUncompressed = nData = FUNC9(pData);
    iCrc32 = FUNC0(0, aData, nData);
    if( iMethod<0 || iMethod==8 ){
      int nOut = 0;
      rc = FUNC14(aData, nData, &aFree, &nOut, &zErr);
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

  /* Decode the "mode" argument. */
  rc = FUNC15(pMode, bIsDir, &mode, &zErr);
  if( rc ) goto zipfile_step_out;

  /* Decode the "mtime" argument. */
  e.mUnixTime = FUNC16(pMtime);

  /* If this is a directory entry, ensure that there is exactly one '/'
  ** at the end of the path. Or, if this is not a directory and the path
  ** ends in '/' it is an error. */
  if( bIsDir==0 ){
    if( zName[nName-1]=='/' ){
      zErr = FUNC5("non-directory name must not end with /");
      rc = SQLITE_ERROR;
      goto zipfile_step_out;
    }
  }else{
    if( zName[nName-1]!='/' ){
      zName = zFree = FUNC5("%s/", zName);
      nName++;
      if( zName==0 ){
        rc = SQLITE_NOMEM;
        goto zipfile_step_out;
      }
    }else{
      while( nName>1 && zName[nName-2]=='/' ) nName--;
    }
  }

  /* Assemble the ZipfileEntry object for the new zip archive entry */
  e.cds.iVersionMadeBy = ZIPFILE_NEWENTRY_MADEBY;
  e.cds.iVersionExtract = ZIPFILE_NEWENTRY_REQUIRED;
  e.cds.flags = ZIPFILE_NEWENTRY_FLAGS;
  e.cds.iCompression = (u16)iMethod;
  FUNC17(&e.cds, (u32)e.mUnixTime);
  e.cds.crc32 = iCrc32;
  e.cds.szCompressed = nData;
  e.cds.szUncompressed = szUncompressed;
  e.cds.iExternalAttr = (mode<<16);
  e.cds.iOffset = p->body.n;
  e.cds.nFile = (u16)nName;
  e.cds.zFile = zName;

  /* Append the LFH to the body of the new archive */
  nByte = ZIPFILE_LFH_FIXED_SZ + e.cds.nFile + 9;
  if( (rc = FUNC13(&p->body, nByte)) ) goto zipfile_step_out;
  p->body.n += FUNC19(&e, &p->body.a[p->body.n]);

  /* Append the data to the body of the new archive */
  if( nData>0 ){
    if( (rc = FUNC13(&p->body, nData)) ) goto zipfile_step_out;
    FUNC1(&p->body.a[p->body.n], aData, nData);
    p->body.n += nData;
  }

  /* Append the CDS record to the directory of the new archive */
  nByte = ZIPFILE_CDS_FIXED_SZ + e.cds.nFile + 9;
  if( (rc = FUNC13(&p->cds, nByte)) ) goto zipfile_step_out;
  p->cds.n += FUNC18(&e, &p->cds.a[p->cds.n]);

  /* Increment the count of entries in the archive */
  p->nEntry++;

 zipfile_step_out:
  FUNC4(aFree);
  FUNC4(zFree);
  if( rc ){
    if( zErr ){
      FUNC6(pCtx, zErr, -1);
    }else{
      FUNC7(pCtx, rc);
    }
  }
  FUNC4(zErr);
}