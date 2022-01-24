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
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC2 (scalar_t__) ; 

__attribute__((used)) static void *FUNC3(int *pRc, sqlite3_int64 nByte){
  void *pRet;
  FUNC0( nByte>0 );
  if( *pRc==SQLITE_OK ){
    pRet = FUNC2(nByte);
    if( pRet ){
      FUNC1(pRet, 0, (size_t)nByte);
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }else{
    pRet = 0;
  }
  return pRet;
}