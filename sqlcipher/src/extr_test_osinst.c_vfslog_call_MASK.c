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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  int sqlite3_int64 ;
struct TYPE_3__ {int nBuf; int /*<<< orphan*/ * aBuf; } ;
typedef  TYPE_1__ VfslogVfs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(
  sqlite3_vfs *pVfs,
  int eEvent,
  int iFileid,
  sqlite3_int64 nClick,
  int return_code,
  int size,
  int offset
){
  VfslogVfs *p = (VfslogVfs *)pVfs;
  unsigned char *zRec;
  if( (24+p->nBuf)>sizeof(p->aBuf) ){
    FUNC1(p);
  }
  zRec = (unsigned char *)&p->aBuf[p->nBuf];
  FUNC0(&zRec[0], eEvent);
  FUNC0(&zRec[4], iFileid);
  FUNC0(&zRec[8], (unsigned int)(nClick&0xffff));
  FUNC0(&zRec[12], return_code);
  FUNC0(&zRec[16], size);
  FUNC0(&zRec[20], offset);
  p->nBuf += 24;
}