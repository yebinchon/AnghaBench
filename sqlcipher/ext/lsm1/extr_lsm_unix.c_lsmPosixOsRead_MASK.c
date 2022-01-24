#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ lsm_i64 ;
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ PosixFile ;

/* Variables and functions */
 int LSM_IOERR_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int FUNC3(
  lsm_file *pFile,                /* File to read from */
  lsm_i64 iOff,                   /* Offset to read from */
  void *pData,                    /* Read data into this buffer */
  int nData                       /* Bytes of data to read */
){
  int rc = LSM_OK;
  PosixFile *p = (PosixFile *)pFile;
  off_t offset;

  offset = FUNC0(p->fd, (off_t)iOff, SEEK_SET);
  if( offset!=iOff ){
    rc = LSM_IOERR_BKPT;
  }else{
    ssize_t prc = FUNC2(p->fd, pData, (size_t)nData);
    if( prc<0 ){ 
      rc = LSM_IOERR_BKPT;
    }else if( prc<nData ){
      FUNC1(&((u8 *)pData)[prc], 0, nData - prc);
    }

  }

  return rc;
}