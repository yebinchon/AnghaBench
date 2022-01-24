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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC1 (scalar_t__) ; 

void *FUNC2(int *pRc, sqlite3_int64 nByte){
  void *pRet = 0;
  if( *pRc==SQLITE_OK ){
    pRet = FUNC1(nByte);
    if( pRet==0 ){
      if( nByte>0 ) *pRc = SQLITE_NOMEM;
    }else{
      FUNC0(pRet, 0, (size_t)nByte);
    }
  }
  return pRet;
}