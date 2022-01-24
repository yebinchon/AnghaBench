#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bt_file ;
struct TYPE_9__ {TYPE_2__** apFile; } ;
struct TYPE_8__ {TYPE_3__* pBt; int /*<<< orphan*/  pFile; TYPE_1__* pVfs; struct TYPE_8__* apSector; } ;
struct TYPE_7__ {int (* xClose ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ BtFile ;
typedef  TYPE_3__ BtDb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(bt_file *pFile){
  BtFile *p = (BtFile*)pFile;
  BtDb *pBt = p->pBt;
  int rc;
  if( pBt ){
    FUNC1(p, 0);
    if( p==pBt->apFile[0] ) pBt->apFile[0] = 0;
    if( p==pBt->apFile[1] ) pBt->apFile[1] = 0;
  }
  FUNC3(p->apSector);
  rc = p->pVfs->xClose(p->pFile);
#if 0
  btDeref(p->pBt);
#endif
  FUNC3(p);
  return rc;
}