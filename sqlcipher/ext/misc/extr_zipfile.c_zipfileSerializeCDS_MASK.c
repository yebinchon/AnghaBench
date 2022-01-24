#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int nExtra; int iVersionMadeBy; int iVersionExtract; int flags; int iCompression; int mTime; int mDate; int nFile; int nComment; int iDiskStart; int iInternalAttr; int /*<<< orphan*/  zFile; int /*<<< orphan*/  iOffset; int /*<<< orphan*/  iExternalAttr; int /*<<< orphan*/  szUncompressed; int /*<<< orphan*/  szCompressed; int /*<<< orphan*/  crc32; } ;
struct TYPE_4__ {int /*<<< orphan*/  mUnixTime; int /*<<< orphan*/  aExtra; TYPE_2__ cds; } ;
typedef  TYPE_1__ ZipfileEntry ;
typedef  TYPE_2__ ZipfileCDS ;

/* Variables and functions */
 size_t ZIPFILE_CDS_NFILE_OFF ; 
 int ZIPFILE_EXTRA_TIMESTAMP ; 
 int /*<<< orphan*/  ZIPFILE_SIGNATURE_CDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ZipfileEntry *pEntry, u8 *aBuf){
  u8 *a = aBuf;
  ZipfileCDS *pCDS = &pEntry->cds;

  if( pEntry->aExtra==0 ){
    pCDS->nExtra = 9;
  }

  FUNC3(a, ZIPFILE_SIGNATURE_CDS);
  FUNC2(a, pCDS->iVersionMadeBy);
  FUNC2(a, pCDS->iVersionExtract);
  FUNC2(a, pCDS->flags);
  FUNC2(a, pCDS->iCompression);
  FUNC2(a, pCDS->mTime);
  FUNC2(a, pCDS->mDate);
  FUNC3(a, pCDS->crc32);
  FUNC3(a, pCDS->szCompressed);
  FUNC3(a, pCDS->szUncompressed);
  FUNC0( a==&aBuf[ZIPFILE_CDS_NFILE_OFF] );
  FUNC2(a, pCDS->nFile);
  FUNC2(a, pCDS->nExtra);
  FUNC2(a, pCDS->nComment);
  FUNC2(a, pCDS->iDiskStart);
  FUNC2(a, pCDS->iInternalAttr);
  FUNC3(a, pCDS->iExternalAttr);
  FUNC3(a, pCDS->iOffset);

  FUNC1(a, pCDS->zFile, pCDS->nFile);
  a += pCDS->nFile;

  if( pEntry->aExtra ){
    int n = (int)pCDS->nExtra + (int)pCDS->nComment;
    FUNC1(a, pEntry->aExtra, n);
    a += n;
  }else{
    FUNC0( pCDS->nExtra==9 );
    FUNC2(a, ZIPFILE_EXTRA_TIMESTAMP);
    FUNC2(a, 5);
    *a++ = 0x01;
    FUNC3(a, pEntry->mUnixTime);
  }

  return a-aBuf;
}