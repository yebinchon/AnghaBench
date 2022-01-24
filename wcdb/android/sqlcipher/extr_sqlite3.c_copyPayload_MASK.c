#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  DbPage ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
  void *pPayload,           /* Pointer to page data */
  void *pBuf,               /* Pointer to buffer */
  int nByte,                /* Number of bytes to copy */
  int eOp,                  /* 0 -> copy from page, 1 -> copy to page */
  DbPage *pDbPage           /* Page containing pPayload */
){
  if( eOp ){
    /* Copy data from buffer to page (a write operation) */
    int rc = FUNC1(pDbPage);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    FUNC0(pPayload, pBuf, nByte);
  }else{
    /* Copy data from page to buffer (a read operation) */
    FUNC0(pBuf, pPayload, nByte);
  }
  return SQLITE_OK;
}