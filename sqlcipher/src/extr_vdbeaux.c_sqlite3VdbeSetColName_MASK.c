#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nResColumn; TYPE_3__* aColName; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int COLNAME_N ; 
 int MEM_Term ; 
 void FUNC0 (void*) ; 
 int SQLITE_NOMEM_BKPT ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,char const*,int,int /*<<< orphan*/ ,void (*) (void*)) ; 

int FUNC3(
  Vdbe *p,                         /* Vdbe being configured */
  int idx,                         /* Index of column zName applies to */
  int var,                         /* One of the COLNAME_* constants */
  const char *zName,               /* Pointer to buffer containing name */
  void (*xDel)(void*)              /* Memory management strategy for zName */
){
  int rc;
  Mem *pColName;
  FUNC1( idx<p->nResColumn );
  FUNC1( var<COLNAME_N );
  if( p->db->mallocFailed ){
    FUNC1( !zName || xDel!=SQLITE_DYNAMIC );
    return SQLITE_NOMEM_BKPT;
  }
  FUNC1( p->aColName!=0 );
  pColName = &(p->aColName[idx+var*p->nResColumn]);
  rc = FUNC2(pColName, zName, -1, SQLITE_UTF8, xDel);
  FUNC1( rc!=0 || !zName || (pColName->flags&MEM_Term)!=0 );
  return rc;
}