#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 void FUNC0 (void*) ; 
 int SQLITE_TOOBIG ; 
 void FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
  const void *p,             /* Value to destroy */
  void (*xDel)(void*),       /* The destructor */
  sqlite3_context *pCtx      /* Set a SQLITE_TOOBIG error if no NULL */
){
  FUNC2( xDel!=SQLITE_DYNAMIC );
  if( xDel==0 ){
    /* noop */
  }else if( xDel==SQLITE_TRANSIENT ){
    /* noop */
  }else{
    xDel((void*)p);
  }
  if( pCtx ) FUNC3(pCtx);
  return SQLITE_TOOBIG;
}