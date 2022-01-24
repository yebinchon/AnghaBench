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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_2__ {int nDelta; char* aDelta; unsigned int iNext; scalar_t__ a2; scalar_t__ a1; void* eOp; } ;
typedef  TYPE_1__ deltaparsevtab_cursor ;

/* Variables and functions */
 void* DELTAPARSE_OP_ERROR ; 
 void* DELTAPARSE_OP_SIZE ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  deltaparsevtab_cursor *pCur = (deltaparsevtab_cursor *)pVtabCursor;
  const char *a;
  int i = 0;
  pCur->eOp = DELTAPARSE_OP_ERROR;
  if( idxNum!=1 ){
    return SQLITE_OK;
  }
  pCur->nDelta = FUNC4(argv[0]);
  a = (const char*)FUNC3(argv[0]);
  if( pCur->nDelta==0 || a==0 ){
    return SQLITE_OK;
  }
  pCur->aDelta = FUNC2( pCur->nDelta+1 );
  if( pCur->aDelta==0 ){
    pCur->nDelta = 0;
    return SQLITE_NOMEM;
  }
  FUNC1(pCur->aDelta, a, pCur->nDelta);
  pCur->aDelta[pCur->nDelta] = 0;
  a = pCur->aDelta;
  pCur->eOp = DELTAPARSE_OP_SIZE;
  pCur->a1 = FUNC0(&a, &i);
  if( a[0]!='\n' ){
    pCur->eOp = DELTAPARSE_OP_ERROR;
    pCur->a1 = pCur->a2 = 0;
    pCur->iNext = pCur->nDelta;
    return SQLITE_OK;
  }
  a++;
  pCur->iNext = (unsigned int)(a - pCur->aDelta);
  return SQLITE_OK;
}