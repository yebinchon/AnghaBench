#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u16 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {int nRef; int /*<<< orphan*/ * db; int /*<<< orphan*/  enc; void* nAllField; void* nKeyField; int /*<<< orphan*/ * aColl; int /*<<< orphan*/ * aSortOrder; } ;
typedef  TYPE_1__ KeyInfo ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

KeyInfo *FUNC4(sqlite3 *db, int N, int X){
  int nExtra = (N+X)*(sizeof(CollSeq*)+1) - sizeof(CollSeq*);
  KeyInfo *p = FUNC2(db, sizeof(KeyInfo) + nExtra);
  if( p ){
    p->aSortOrder = (u8*)&p->aColl[N+X];
    p->nKeyField = (u16)N;
    p->nAllField = (u16)(N+X);
    p->enc = FUNC0(db);
    p->db = db;
    p->nRef = 1;
    FUNC1(&p[1], 0, nExtra);
  }else{
    FUNC3(db);
  }
  return p;
}