#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_3__ {char* a; int nAlloc; int n; } ;
typedef  TYPE_1__ Blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(Blob *pNode, int iHeight, sqlite3_int64 iChild){
  pNode->a[0] = (char)iHeight;
  if( iChild ){
    FUNC0( pNode->nAlloc>=1+FUNC2(iChild) );
    pNode->n = 1 + FUNC1(&pNode->a[1], iChild);
  }else{
    FUNC0( pNode->nAlloc>=1 );
    pNode->n = 1;
  }
}