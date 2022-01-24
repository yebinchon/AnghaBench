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
struct TYPE_6__ {scalar_t__ rc; scalar_t__ pDataVersion; TYPE_1__* pConfig; } ;
struct TYPE_5__ {int /*<<< orphan*/  zDb; } ;
typedef  TYPE_2__ Fts5Index ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static i64 FUNC5(Fts5Index *p){
  i64 iVersion = 0;

  if( p->rc==SQLITE_OK ){
    if( p->pDataVersion==0 ){
      p->rc = FUNC0(p, &p->pDataVersion, 
          FUNC2("PRAGMA %Q.data_version", p->pConfig->zDb)
          );
      if( p->rc ) return 0;
    }

    if( SQLITE_ROW==FUNC4(p->pDataVersion) ){
      iVersion = FUNC1(p->pDataVersion, 0);
    }
    p->rc = FUNC3(p->pDataVersion);
  }

  return iVersion;
}