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
typedef  int /*<<< orphan*/  sqlite4_env ;
struct TYPE_5__ {scalar_t__ pVfsCtx; } ;
typedef  TYPE_1__ bt_env ;
struct TYPE_7__ {int (* xUnlink ) (int /*<<< orphan*/ *,TYPE_3__*,char const*) ;} ;
struct TYPE_6__ {TYPE_3__* pVfs; scalar_t__ bCrash; } ;
typedef  TYPE_2__ BtDb ;

/* Variables and functions */
 int SQLITE4_IOERR ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,char const*) ; 

__attribute__((used)) static int FUNC1(sqlite4_env *pEnv, bt_env *pVfs, const char *zFile){
  BtDb *pBt = (BtDb*)pVfs->pVfsCtx;
  if( pBt->bCrash ) return SQLITE4_IOERR;
  return pBt->pVfs->xUnlink(pEnv, pBt->pVfs, zFile);
}