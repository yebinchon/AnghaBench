#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_3__ {void* iOffset; void* iExternalAttr; void* iInternalAttr; void* iDiskStart; void* nComment; void* nExtra; void* nFile; void* szUncompressed; void* szCompressed; void* crc32; void* mDate; void* mTime; void* iCompression; void* flags; void* iVersionExtract; void* iVersionMadeBy; } ;
typedef  TYPE_1__ ZipfileCDS ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 size_t ZIPFILE_CDS_FIXED_SZ ; 
 size_t ZIPFILE_CDS_NFILE_OFF ; 
 scalar_t__ ZIPFILE_SIGNATURE_CDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(u8 *aBuf, ZipfileCDS *pCDS){
  u8 *aRead = aBuf;
  u32 sig = FUNC2(aRead);
  int rc = SQLITE_OK;
  if( sig!=ZIPFILE_SIGNATURE_CDS ){
    rc = SQLITE_ERROR;
  }else{
    pCDS->iVersionMadeBy = FUNC1(aRead);
    pCDS->iVersionExtract = FUNC1(aRead);
    pCDS->flags = FUNC1(aRead);
    pCDS->iCompression = FUNC1(aRead);
    pCDS->mTime = FUNC1(aRead);
    pCDS->mDate = FUNC1(aRead);
    pCDS->crc32 = FUNC2(aRead);
    pCDS->szCompressed = FUNC2(aRead);
    pCDS->szUncompressed = FUNC2(aRead);
    FUNC0( aRead==&aBuf[ZIPFILE_CDS_NFILE_OFF] );
    pCDS->nFile = FUNC1(aRead);
    pCDS->nExtra = FUNC1(aRead);
    pCDS->nComment = FUNC1(aRead);
    pCDS->iDiskStart = FUNC1(aRead);
    pCDS->iInternalAttr = FUNC1(aRead);
    pCDS->iExternalAttr = FUNC2(aRead);
    pCDS->iOffset = FUNC2(aRead);
    FUNC0( aRead==&aBuf[ZIPFILE_CDS_FIXED_SZ] );
  }

  return rc;
}