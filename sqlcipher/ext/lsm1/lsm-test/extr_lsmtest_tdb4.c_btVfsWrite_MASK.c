#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite4_int64 ;
typedef  int /*<<< orphan*/  bt_file ;
struct TYPE_7__ {int /*<<< orphan*/  pFile; TYPE_2__* pVfs; TYPE_1__* pBt; } ;
struct TYPE_6__ {int (* xWrite ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ;} ;
struct TYPE_5__ {scalar_t__ nCrashSync; scalar_t__ bCrash; } ;
typedef  TYPE_3__ BtFile ;

/* Variables and functions */
 int SQLITE4_IOERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC2(bt_file *pFile, sqlite4_int64 iOff, void *pBuf, int nBuf){
  BtFile *p = (BtFile*)pFile;
  if( p->pBt && p->pBt->bCrash ) return SQLITE4_IOERR;
  if( p->pBt && p->pBt->nCrashSync ){
    FUNC0(p, iOff, nBuf);
  }
  return p->pVfs->xWrite(p->pFile, iOff, pBuf, nBuf);
}