#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nAlloc; scalar_t__ mxAlloc; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ sqlite3_str ;
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_NOMEM ; 
 int /*<<< orphan*/  SQLITE_TOOBIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static char *FUNC2(sqlite3_str *pAccum, sqlite3_int64 n){
  char *z;
  if( n>pAccum->nAlloc && n>pAccum->mxAlloc ){
    FUNC0(pAccum, SQLITE_TOOBIG);
    return 0;
  }
  z = FUNC1(pAccum->db, n);
  if( z==0 ){
    FUNC0(pAccum, SQLITE_NOMEM);
  }
  return z;
}