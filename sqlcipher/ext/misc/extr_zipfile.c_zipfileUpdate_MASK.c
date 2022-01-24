#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  int u32 ;
typedef  void* u16 ;
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int i64 ;
struct TYPE_16__ {int /*<<< orphan*/  zErrMsg; } ;
struct TYPE_17__ {scalar_t__ pWriteFd; TYPE_4__* pCsrList; scalar_t__ szCurrent; int /*<<< orphan*/  db; TYPE_3__* pFirstEntry; TYPE_1__ base; } ;
typedef  TYPE_2__ ZipfileTab ;
struct TYPE_20__ {char const* zFile; int crc32; int szCompressed; int szUncompressed; int iExternalAttr; int iOffset; void* nFile; void* iCompression; int /*<<< orphan*/  flags; int /*<<< orphan*/  iVersionExtract; int /*<<< orphan*/  iVersionMadeBy; } ;
struct TYPE_18__ {int mUnixTime; struct TYPE_18__* pNext; TYPE_9__ cds; } ;
typedef  TYPE_3__ ZipfileEntry ;
struct TYPE_19__ {int bNoop; TYPE_3__* pCurrent; struct TYPE_19__* pCsrNext; } ;
typedef  TYPE_4__ ZipfileCsr ;

/* Variables and functions */
 int SQLITE_CONSTRAINT ; 
#define  SQLITE_IGNORE 129 
 int SQLITE_NOMEM ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
#define  SQLITE_REPLACE 128 
 int /*<<< orphan*/  ZIPFILE_NEWENTRY_FLAGS ; 
 int /*<<< orphan*/  ZIPFILE_NEWENTRY_MADEBY ; 
 int /*<<< orphan*/  ZIPFILE_NEWENTRY_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_3__*,TYPE_3__*) ; 
 int FUNC12 (TYPE_2__*,TYPE_3__*,char const*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,char const*,int) ; 
 int FUNC15 (char const*,int,char**,int*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*,int) ; 
 TYPE_3__* FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,char*,...) ; 

__attribute__((used)) static int FUNC22(
  sqlite3_vtab *pVtab, 
  int nVal, 
  sqlite3_value **apVal, 
  sqlite_int64 *pRowid
){
  ZipfileTab *pTab = (ZipfileTab*)pVtab;
  int rc = SQLITE_OK;             /* Return Code */
  ZipfileEntry *pNew = 0;         /* New in-memory CDS entry */

  u32 mode = 0;                   /* Mode for new entry */
  u32 mTime = 0;                  /* Modification time for new entry */
  i64 sz = 0;                     /* Uncompressed size */
  const char *zPath = 0;          /* Path for new entry */
  int nPath = 0;                  /* strlen(zPath) */
  const u8 *pData = 0;            /* Pointer to buffer containing content */
  int nData = 0;                  /* Size of pData buffer in bytes */
  int iMethod = 0;                /* Compression method for new entry */
  u8 *pFree = 0;                  /* Free this */
  char *zFree = 0;                /* Also free this */
  ZipfileEntry *pOld = 0;
  ZipfileEntry *pOld2 = 0;
  int bUpdate = 0;                /* True for an update that modifies "name" */
  int bIsDir = 0;
  u32 iCrc32 = 0;

  if( pTab->pWriteFd==0 ){
    rc = FUNC13(pVtab);
    if( rc!=SQLITE_OK ) return rc;
  }

  /* If this is a DELETE or UPDATE, find the archive entry to delete. */
  if( FUNC8(apVal[0])!=SQLITE_NULL ){
    const char *zDelete = (const char*)FUNC7(apVal[0]);
    int nDelete = (int)FUNC10(zDelete);
    if( nVal>1 ){
      const char *zUpdate = (const char*)FUNC7(apVal[1]);
      if( zUpdate && FUNC14(zUpdate, zDelete, nDelete)!=0 ){
        bUpdate = 1;
      }
    }
    for(pOld=pTab->pFirstEntry; 1; pOld=pOld->pNext){
      if( FUNC14(pOld->cds.zFile, zDelete, nDelete)==0 ){
        break;
      }
      FUNC0( pOld->pNext );
    }
  }

  if( nVal>1 ){
    /* Check that "sz" and "rawdata" are both NULL: */
    if( FUNC8(apVal[5])!=SQLITE_NULL ){
      FUNC21(pTab, "sz must be NULL");
      rc = SQLITE_CONSTRAINT;
    }
    if( FUNC8(apVal[6])!=SQLITE_NULL ){
      FUNC21(pTab, "rawdata must be NULL"); 
      rc = SQLITE_CONSTRAINT;
    }

    if( rc==SQLITE_OK ){
      if( FUNC8(apVal[7])==SQLITE_NULL ){
        /* data=NULL. A directory */
        bIsDir = 1;
      }else{
        /* Value specified for "data", and possibly "method". This must be
        ** a regular file or a symlink. */
        const u8 *aIn = FUNC4(apVal[7]);
        int nIn = FUNC5(apVal[7]);
        int bAuto = FUNC8(apVal[8])==SQLITE_NULL;

        iMethod = FUNC6(apVal[8]);
        sz = nIn;
        pData = aIn;
        nData = nIn;
        if( iMethod!=0 && iMethod!=8 ){
          FUNC21(pTab, "unknown compression method: %d", iMethod);
          rc = SQLITE_CONSTRAINT;
        }else{
          if( bAuto || iMethod ){
            int nCmp;
            rc = FUNC15(aIn, nIn, &pFree, &nCmp, &pTab->base.zErrMsg);
            if( rc==SQLITE_OK ){
              if( iMethod || nCmp<nIn ){
                iMethod = 8;
                pData = pFree;
                nData = nCmp;
              }
            }
          }
          iCrc32 = FUNC1(0, aIn, nIn);
        }
      }
    }

    if( rc==SQLITE_OK ){
      rc = FUNC16(apVal[3], bIsDir, &mode, &pTab->base.zErrMsg);
    }

    if( rc==SQLITE_OK ){
      zPath = (const char*)FUNC7(apVal[2]);
      nPath = (int)FUNC10(zPath);
      mTime = FUNC17(apVal[4]);
    }

    if( rc==SQLITE_OK && bIsDir ){
      /* For a directory, check that the last character in the path is a
      ** '/'. This appears to be required for compatibility with info-zip
      ** (the unzip command on unix). It does not create directories
      ** otherwise.  */
      if( zPath[nPath-1]!='/' ){
        zFree = FUNC3("%s/", zPath);
        if( zFree==0 ){ rc = SQLITE_NOMEM; }
        zPath = (const char*)zFree;
        nPath++;
      }
    }

    /* Check that we're not inserting a duplicate entry -OR- updating an
    ** entry with a path, thereby making it into a duplicate. */
    if( (pOld==0 || bUpdate) && rc==SQLITE_OK ){
      ZipfileEntry *p;
      for(p=pTab->pFirstEntry; p; p=p->pNext){
        if( FUNC14(p->cds.zFile, zPath, nPath)==0 ){
          switch( FUNC9(pTab->db) ){
            case SQLITE_IGNORE: {
              goto zipfile_update_done;
            }
            case SQLITE_REPLACE: {
              pOld2 = p;
              break;
            }
            default: {
              FUNC21(pTab, "duplicate name: \"%s\"", zPath);
              rc = SQLITE_CONSTRAINT;
              break;
            }
          }
          break;
        }
      }
    }

    if( rc==SQLITE_OK ){
      /* Create the new CDS record. */
      pNew = FUNC19(zPath);
      if( pNew==0 ){
        rc = SQLITE_NOMEM;
      }else{
        pNew->cds.iVersionMadeBy = ZIPFILE_NEWENTRY_MADEBY;
        pNew->cds.iVersionExtract = ZIPFILE_NEWENTRY_REQUIRED;
        pNew->cds.flags = ZIPFILE_NEWENTRY_FLAGS;
        pNew->cds.iCompression = (u16)iMethod;
        FUNC18(&pNew->cds, mTime);
        pNew->cds.crc32 = iCrc32;
        pNew->cds.szCompressed = nData;
        pNew->cds.szUncompressed = (u32)sz;
        pNew->cds.iExternalAttr = (mode<<16);
        pNew->cds.iOffset = (u32)pTab->szCurrent;
        pNew->cds.nFile = (u16)nPath;
        pNew->mUnixTime = (u32)mTime;
        rc = FUNC12(pTab, pNew, pData, nData);
        FUNC11(pTab, pOld, pNew);
      }
    }
  }

  if( rc==SQLITE_OK && (pOld || pOld2) ){
    ZipfileCsr *pCsr;
    for(pCsr=pTab->pCsrList; pCsr; pCsr=pCsr->pCsrNext){
      if( pCsr->pCurrent && (pCsr->pCurrent==pOld || pCsr->pCurrent==pOld2) ){
        pCsr->pCurrent = pCsr->pCurrent->pNext;
        pCsr->bNoop = 1;
      }
    }

    FUNC20(pTab, pOld);
    FUNC20(pTab, pOld2);
  }

zipfile_update_done:
  FUNC2(pFree);
  FUNC2(zFree);
  return rc;
}