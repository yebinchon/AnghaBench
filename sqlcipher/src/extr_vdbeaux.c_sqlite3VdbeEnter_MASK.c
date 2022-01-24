#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nDb; TYPE_3__* aDb; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_6__ {int /*<<< orphan*/  lockMask; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;
struct TYPE_7__ {scalar_t__ pBt; } ;
typedef  TYPE_3__ Db ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(Vdbe *p){
  int i;
  sqlite3 *db;
  Db *aDb;
  int nDb;
  if( FUNC1(p->lockMask) ) return;  /* The common case */
  db = p->db;
  aDb = db->aDb;
  nDb = db->nDb;
  for(i=0; i<nDb; i++){
    if( i!=1 && FUNC2(p->lockMask,i) && FUNC0(aDb[i].pBt!=0) ){
      FUNC3(aDb[i].pBt);
    }
  }
}