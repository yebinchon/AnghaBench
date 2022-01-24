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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_7__ {scalar_t__ nHashSize; } ;
struct TYPE_6__ {scalar_t__ rc; scalar_t__ pHash; scalar_t__ nPendingData; scalar_t__ iWriteRowid; int bDelete; TYPE_3__* pConfig; } ;
typedef  TYPE_1__ Fts5Index ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__*,scalar_t__*) ; 

int FUNC4(Fts5Index *p, int bDelete, i64 iRowid){
  FUNC0( p->rc==SQLITE_OK );

  /* Allocate the hash table if it has not already been allocated */
  if( p->pHash==0 ){
    p->rc = FUNC3(p->pConfig, &p->pHash, &p->nPendingData);
  }

  /* Flush the hash table to disk if required */
  if( iRowid<p->iWriteRowid 
   || (iRowid==p->iWriteRowid && p->bDelete==0)
   || (p->nPendingData > p->pConfig->nHashSize) 
  ){
    FUNC1(p);
  }

  p->iWriteRowid = iRowid;
  p->bDelete = bDelete;
  return FUNC2(p);
}