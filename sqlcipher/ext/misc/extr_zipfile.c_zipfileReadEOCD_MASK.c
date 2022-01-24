#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ i64 ;
struct TYPE_7__ {int /*<<< orphan*/  zErrMsg; } ;
struct TYPE_8__ {int* aBuffer; TYPE_1__ base; } ;
typedef  TYPE_2__ ZipfileTab ;
struct TYPE_9__ {void* iOffset; void* nSize; void* nEntryTotal; void* nEntry; void* iFirstDisk; void* iDisk; } ;
typedef  TYPE_3__ ZipfileEOCD ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  ZIPFILE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (int*) ; 
 void* FUNC6 (int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*,int,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
  ZipfileTab *pTab,               /* Return errors here */
  const u8 *aBlob,                /* Pointer to in-memory file image */
  int nBlob,                      /* Size of aBlob[] in bytes */
  FILE *pFile,                    /* Read from this file if aBlob==0 */
  ZipfileEOCD *pEOCD              /* Object to populate */
){
  u8 *aRead = pTab->aBuffer;      /* Temporary buffer */
  int nRead;                      /* Bytes to read from file */
  int rc = SQLITE_OK;

  if( aBlob==0 ){
    i64 iOff;                     /* Offset to read from */
    i64 szFile;                   /* Total size of file in bytes */
    FUNC1(pFile, 0, SEEK_END);
    szFile = (i64)FUNC2(pFile);
    if( szFile==0 ){
      FUNC3(pEOCD, 0, sizeof(ZipfileEOCD));
      return SQLITE_OK;
    }
    nRead = (int)(FUNC0(szFile, ZIPFILE_BUFFER_SIZE));
    iOff = szFile - nRead;
    rc = FUNC7(pFile, aRead, nRead, iOff, &pTab->base.zErrMsg);
  }else{
    nRead = (int)(FUNC0(nBlob, ZIPFILE_BUFFER_SIZE));
    aRead = (u8*)&aBlob[nBlob-nRead];
  }

  if( rc==SQLITE_OK ){
    int i;

    /* Scan backwards looking for the signature bytes */
    for(i=nRead-20; i>=0; i--){
      if( aRead[i]==0x50 && aRead[i+1]==0x4b 
       && aRead[i+2]==0x05 && aRead[i+3]==0x06 
      ){
        break;
      }
    }
    if( i<0 ){
      pTab->base.zErrMsg = FUNC4(
          "cannot find end of central directory record"
      );
      return SQLITE_ERROR;
    }

    aRead += i+4;
    pEOCD->iDisk = FUNC5(aRead);
    pEOCD->iFirstDisk = FUNC5(aRead);
    pEOCD->nEntry = FUNC5(aRead);
    pEOCD->nEntryTotal = FUNC5(aRead);
    pEOCD->nSize = FUNC6(aRead);
    pEOCD->iOffset = FUNC6(aRead);
  }

  return rc;
}