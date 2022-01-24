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
typedef  int u16 ;
struct TYPE_5__ {int nExtra; int iVersionExtract; int flags; int iCompression; int mTime; int mDate; scalar_t__ nFile; int /*<<< orphan*/  zFile; int /*<<< orphan*/  szUncompressed; int /*<<< orphan*/  szCompressed; int /*<<< orphan*/  crc32; } ;
struct TYPE_4__ {int /*<<< orphan*/  mUnixTime; TYPE_2__ cds; } ;
typedef  TYPE_1__ ZipfileEntry ;
typedef  TYPE_2__ ZipfileCDS ;

/* Variables and functions */
 int ZIPFILE_EXTRA_TIMESTAMP ; 
 size_t ZIPFILE_LFH_FIXED_SZ ; 
 int /*<<< orphan*/  ZIPFILE_SIGNATURE_LFH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ZipfileEntry *pEntry, u8 *aBuf){
  ZipfileCDS *pCds = &pEntry->cds;
  u8 *a = aBuf;

  pCds->nExtra = 9;

  /* Write the LFH itself */
  FUNC3(a, ZIPFILE_SIGNATURE_LFH);
  FUNC2(a, pCds->iVersionExtract);
  FUNC2(a, pCds->flags);
  FUNC2(a, pCds->iCompression);
  FUNC2(a, pCds->mTime);
  FUNC2(a, pCds->mDate);
  FUNC3(a, pCds->crc32);
  FUNC3(a, pCds->szCompressed);
  FUNC3(a, pCds->szUncompressed);
  FUNC2(a, (u16)pCds->nFile);
  FUNC2(a, pCds->nExtra);
  FUNC0( a==&aBuf[ZIPFILE_LFH_FIXED_SZ] );

  /* Add the file name */
  FUNC1(a, pCds->zFile, (int)pCds->nFile);
  a += (int)pCds->nFile;

  /* The "extra" data */
  FUNC2(a, ZIPFILE_EXTRA_TIMESTAMP);
  FUNC2(a, 5);
  *a++ = 0x01;
  FUNC3(a, pEntry->mUnixTime);

  return a-aBuf;
}