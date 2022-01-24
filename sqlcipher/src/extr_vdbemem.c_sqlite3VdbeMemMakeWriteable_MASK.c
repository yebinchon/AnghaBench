#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; scalar_t__ szMalloc; scalar_t__ z; scalar_t__ zMalloc; scalar_t__ pScopyFrom; TYPE_1__* db; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int MEM_Blob ; 
 int MEM_Ephem ; 
 int MEM_Str ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 

int FUNC5(Mem *pMem){
  FUNC1( pMem->db==0 || FUNC3(pMem->db->mutex) );
  FUNC1( !FUNC2(pMem) );
  if( (pMem->flags & (MEM_Str|MEM_Blob))!=0 ){
    if( FUNC0(pMem) ) return SQLITE_NOMEM;
    if( pMem->szMalloc==0 || pMem->z!=pMem->zMalloc ){
      int rc = FUNC4(pMem);
      if( rc ) return rc;
    }
  }
  pMem->flags &= ~MEM_Ephem;
#ifdef SQLITE_DEBUG
  pMem->pScopyFrom = 0;
#endif

  return SQLITE_OK;
}