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

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static void *FUNC3(int *pRc, int n){
  void *pRet = 0;
  FUNC0( n!=0 );
  if( *pRc==SQLITE_OK ){
    pRet = FUNC2(n);
    if( pRet ){
      FUNC1(pRet, 0, n);
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }
  return pRet;
}