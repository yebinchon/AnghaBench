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
struct TYPE_3__ {char* zColl; } ;
typedef  TYPE_1__ IdxConstraint ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static IdxConstraint *FUNC4(int *pRc, const char *zColl){
  IdxConstraint *pNew;
  int nColl = FUNC0(zColl);

  FUNC1( *pRc==SQLITE_OK );
  pNew = (IdxConstraint*)FUNC2(pRc, sizeof(IdxConstraint) * nColl + 1);
  if( pNew ){
    pNew->zColl = (char*)&pNew[1];
    FUNC3(pNew->zColl, zColl, nColl+1);
  }
  return pNew;
}