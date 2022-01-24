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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {int nAlloc; char* zBuf; scalar_t__ bStatic; scalar_t__ nUsed; scalar_t__ bErr; } ;
typedef  TYPE_1__ JsonString ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(JsonString *p, u32 N){
  u64 nTotal = N<p->nAlloc ? p->nAlloc*2 : p->nAlloc+N+10;
  char *zNew;
  if( p->bStatic ){
    if( p->bErr ) return 1;
    zNew = FUNC2(nTotal);
    if( zNew==0 ){
      FUNC0(p);
      return SQLITE_NOMEM;
    }
    FUNC1(zNew, p->zBuf, (size_t)p->nUsed);
    p->zBuf = zNew;
    p->bStatic = 0;
  }else{
    zNew = FUNC3(p->zBuf, nTotal);
    if( zNew==0 ){
      FUNC0(p);
      return SQLITE_NOMEM;
    }
    p->zBuf = zNew;
  }
  p->nAlloc = nTotal;
  return SQLITE_OK;
}