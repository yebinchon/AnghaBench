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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
struct TYPE_5__ {scalar_t__ rc; scalar_t__ pWriter; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(Fts5Index *p, i64 iRowid, const u8 *pData, int nData){
  if( p->rc!=SQLITE_OK ) return;

  if( p->pWriter==0 ){
    Fts5Config *pConfig = p->pConfig;
    FUNC0(p, &p->pWriter, FUNC4(
          "REPLACE INTO '%q'.'%q_data'(id, block) VALUES(?,?)", 
          pConfig->zDb, pConfig->zName
    ));
    if( p->rc ) return;
  }

  FUNC2(p->pWriter, 1, iRowid);
  FUNC1(p->pWriter, 2, pData, nData, SQLITE_STATIC);
  FUNC6(p->pWriter);
  p->rc = FUNC5(p->pWriter);
  FUNC3(p->pWriter, 2);
}