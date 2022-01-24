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
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
struct TYPE_5__ {scalar_t__ rc; scalar_t__ pDeleter; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(Fts5Index *p, i64 iFirst, i64 iLast){
  if( p->rc!=SQLITE_OK ) return;

  if( p->pDeleter==0 ){
    Fts5Config *pConfig = p->pConfig;
    char *zSql = FUNC2(
        "DELETE FROM '%q'.'%q_data' WHERE id>=? AND id<=?", 
          pConfig->zDb, pConfig->zName
    );
    if( FUNC0(p, &p->pDeleter, zSql) ) return;
  }

  FUNC1(p->pDeleter, 1, iFirst);
  FUNC1(p->pDeleter, 2, iLast);
  FUNC4(p->pDeleter);
  p->rc = FUNC3(p->pDeleter);
}