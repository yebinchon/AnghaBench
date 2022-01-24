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
typedef  int /*<<< orphan*/  sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(void *pOrig, sqlite3_int64 nNew){
  void *pRet = FUNC1(pOrig, nNew);
  if( !pRet ){
    FUNC0(pOrig);
  }
  return pRet;
}