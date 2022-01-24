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
struct TYPE_3__ {void* nExtra; void* nFile; void* szUncompressed; void* szCompressed; void* crc32; void* mDate; void* mTime; void* iCompression; void* flags; void* iVersionExtract; } ;
typedef  TYPE_1__ ZipfileLFH ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ ZIPFILE_SIGNATURE_LFH ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
  u8 *aBuffer,
  ZipfileLFH *pLFH
){
  u8 *aRead = aBuffer;
  int rc = SQLITE_OK;

  u32 sig = FUNC1(aRead);
  if( sig!=ZIPFILE_SIGNATURE_LFH ){
    rc = SQLITE_ERROR;
  }else{
    pLFH->iVersionExtract = FUNC0(aRead);
    pLFH->flags = FUNC0(aRead);
    pLFH->iCompression = FUNC0(aRead);
    pLFH->mTime = FUNC0(aRead);
    pLFH->mDate = FUNC0(aRead);
    pLFH->crc32 = FUNC1(aRead);
    pLFH->szCompressed = FUNC1(aRead);
    pLFH->szUncompressed = FUNC1(aRead);
    pLFH->nFile = FUNC0(aRead);
    pLFH->nExtra = FUNC0(aRead);
  }
  return rc;
}