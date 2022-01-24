#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  db; scalar_t__ pOpenClose; scalar_t__ bHasContext; } ;
typedef  TYPE_1__ UnionTab ;
struct TYPE_6__ {int /*<<< orphan*/  zContext; int /*<<< orphan*/  zFile; } ;
typedef  TYPE_2__ UnionSrc ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(
  UnionTab *pTab, 
  UnionSrc *pSrc, 
  int bClose,
  char **pzErr
){
  int rc = SQLITE_OK;
  if( pTab->pOpenClose ){
    FUNC1(pTab->pOpenClose, 1, pSrc->zFile, -1, SQLITE_STATIC);
    if( pTab->bHasContext ){
      FUNC1(pTab->pOpenClose, 2, pSrc->zContext, -1, SQLITE_STATIC);
    }
    FUNC0(pTab->pOpenClose, 2+pTab->bHasContext, bClose);
    FUNC5(pTab->pOpenClose);
    if( SQLITE_OK!=(rc = FUNC4(pTab->pOpenClose)) ){
      if( pzErr ){
        *pzErr = FUNC3("%s", FUNC2(pTab->db));
      }
    }
  }
  return rc;
}