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
typedef  void u8 ;
struct stat {int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; } ;
typedef  int /*<<< orphan*/  lsm_file ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ PosixFile ;

/* Variables and functions */
 int LSM_IOERR_BKPT ; 
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(
  lsm_file *pFile, 
  void *pBuf,
  int *pnBuf
){
  int prc;
  int nBuf;
  int nReq;
  PosixFile *p = (PosixFile *)pFile;
  struct stat buf;

  nBuf = *pnBuf;
  nReq = (sizeof(buf.st_dev) + sizeof(buf.st_ino));
  *pnBuf = nReq;
  if( nReq>nBuf ) return LSM_OK;

  FUNC2(&buf, 0, sizeof(buf));
  prc = FUNC0(p->fd, &buf);
  if( prc!=0 ) return LSM_IOERR_BKPT;

  FUNC1(pBuf, &buf.st_dev, sizeof(buf.st_dev));
  FUNC1(&(((u8 *)pBuf)[sizeof(buf.st_dev)]), &buf.st_ino, sizeof(buf.st_ino));
  return LSM_OK;
}