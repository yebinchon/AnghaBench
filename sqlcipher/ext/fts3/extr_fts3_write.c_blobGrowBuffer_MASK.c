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
struct TYPE_3__ {int nAlloc; char* a; } ;
typedef  TYPE_1__ Blob ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(Blob *pBlob, int nMin, int *pRc){
  if( *pRc==SQLITE_OK && nMin>pBlob->nAlloc ){
    int nAlloc = nMin;
    char *a = (char *)FUNC0(pBlob->a, nAlloc);
    if( a ){
      pBlob->nAlloc = nAlloc;
      pBlob->a = a;
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }
}