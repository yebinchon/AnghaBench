#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  (* xDelete ) (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ sqlite3_vfs ;
struct TYPE_15__ {TYPE_1__* pMethods; } ;
typedef  TYPE_3__ sqlite3_file ;
struct TYPE_16__ {TYPE_11__* aReal; } ;
typedef  TYPE_4__ multiplexGroup ;
struct TYPE_13__ {int /*<<< orphan*/  (* xClose ) (TYPE_3__*) ;} ;
struct TYPE_12__ {TYPE_3__* z; TYPE_3__* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
  multiplexGroup *pGroup,
  int iChunk,
  sqlite3_vfs *pOrigVfs
){
  sqlite3_file *pSubOpen = pGroup->aReal[iChunk].p;
  if( pSubOpen ){
    pSubOpen->pMethods->xClose(pSubOpen);
    if( pOrigVfs && pGroup->aReal[iChunk].z ){
      pOrigVfs->xDelete(pOrigVfs, pGroup->aReal[iChunk].z, 0);
    }
    FUNC1(pGroup->aReal[iChunk].p);
  }
  FUNC1(pGroup->aReal[iChunk].z);
  FUNC0(&pGroup->aReal[iChunk], 0, sizeof(pGroup->aReal[iChunk]));
}