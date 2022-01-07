
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ i64 ;
struct TYPE_7__ {int zErrMsg; } ;
struct TYPE_8__ {int* aBuffer; TYPE_1__ base; } ;
typedef TYPE_2__ ZipfileTab ;
struct TYPE_9__ {void* iOffset; void* nSize; void* nEntryTotal; void* nEntry; void* iFirstDisk; void* iDisk; } ;
typedef TYPE_3__ ZipfileEOCD ;
typedef int FILE ;


 scalar_t__ MIN (int,int ) ;
 int SEEK_END ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int ZIPFILE_BUFFER_SIZE ;
 int fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3_mprintf (char*) ;
 void* zipfileRead16 (int*) ;
 void* zipfileRead32 (int*) ;
 int zipfileReadData (int *,int*,int,scalar_t__,int *) ;

__attribute__((used)) static int zipfileReadEOCD(
  ZipfileTab *pTab,
  const u8 *aBlob,
  int nBlob,
  FILE *pFile,
  ZipfileEOCD *pEOCD
){
  u8 *aRead = pTab->aBuffer;
  int nRead;
  int rc = SQLITE_OK;

  if( aBlob==0 ){
    i64 iOff;
    i64 szFile;
    fseek(pFile, 0, SEEK_END);
    szFile = (i64)ftell(pFile);
    if( szFile==0 ){
      memset(pEOCD, 0, sizeof(ZipfileEOCD));
      return SQLITE_OK;
    }
    nRead = (int)(MIN(szFile, ZIPFILE_BUFFER_SIZE));
    iOff = szFile - nRead;
    rc = zipfileReadData(pFile, aRead, nRead, iOff, &pTab->base.zErrMsg);
  }else{
    nRead = (int)(MIN(nBlob, ZIPFILE_BUFFER_SIZE));
    aRead = (u8*)&aBlob[nBlob-nRead];
  }

  if( rc==SQLITE_OK ){
    int i;


    for(i=nRead-20; i>=0; i--){
      if( aRead[i]==0x50 && aRead[i+1]==0x4b
       && aRead[i+2]==0x05 && aRead[i+3]==0x06
      ){
        break;
      }
    }
    if( i<0 ){
      pTab->base.zErrMsg = sqlite3_mprintf(
          "cannot find end of central directory record"
      );
      return SQLITE_ERROR;
    }

    aRead += i+4;
    pEOCD->iDisk = zipfileRead16(aRead);
    pEOCD->iFirstDisk = zipfileRead16(aRead);
    pEOCD->nEntry = zipfileRead16(aRead);
    pEOCD->nEntryTotal = zipfileRead16(aRead);
    pEOCD->nSize = zipfileRead32(aRead);
    pEOCD->iOffset = zipfileRead32(aRead);
  }

  return rc;
}
