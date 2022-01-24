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
struct TYPE_6__ {char* zName; struct TYPE_6__* pNext; scalar_t__ pScript; TYPE_1__* pDb; int /*<<< orphan*/  interp; } ;
struct TYPE_5__ {TYPE_2__* pFunc; int /*<<< orphan*/  interp; } ;
typedef  TYPE_1__ SqliteDb ;
typedef  TYPE_2__ SqlFunc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static SqlFunc *FUNC5(SqliteDb *pDb, const char *zName){
  SqlFunc *p, *pNew;
  int nName = FUNC4(zName);
  pNew = (SqlFunc*)FUNC0( sizeof(*pNew) + nName + 1 );
  pNew->zName = (char*)&pNew[1];
  FUNC2(pNew->zName, zName, nName+1);
  for(p=pDb->pFunc; p; p=p->pNext){
    if( FUNC3(p->zName, pNew->zName)==0 ){
      FUNC1((char*)pNew);
      return p;
    }
  }
  pNew->interp = pDb->interp;
  pNew->pDb = pDb;
  pNew->pScript = 0;
  pNew->pNext = pDb->pFunc;
  pDb->pFunc = pNew;
  return pNew;
}