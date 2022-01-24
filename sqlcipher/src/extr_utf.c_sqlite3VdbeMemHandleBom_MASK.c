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
typedef  int u8 ;
struct TYPE_4__ {int n; char* z; int enc; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_Term ; 
 int SQLITE_OK ; 
 int SQLITE_UTF16BE ; 
 int SQLITE_UTF16LE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(Mem *pMem){
  int rc = SQLITE_OK;
  u8 bom = 0;

  FUNC0( pMem->n>=0 );
  if( pMem->n>1 ){
    u8 b1 = *(u8 *)pMem->z;
    u8 b2 = *(((u8 *)pMem->z) + 1);
    if( b1==0xFE && b2==0xFF ){
      bom = SQLITE_UTF16BE;
    }
    if( b1==0xFF && b2==0xFE ){
      bom = SQLITE_UTF16LE;
    }
  }
  
  if( bom ){
    rc = FUNC2(pMem);
    if( rc==SQLITE_OK ){
      pMem->n -= 2;
      FUNC1(pMem->z, &pMem->z[2], pMem->n);
      pMem->z[pMem->n] = '\0';
      pMem->z[pMem->n+1] = '\0';
      pMem->flags |= MEM_Term;
      pMem->enc = bom;
    }
  }
  return rc;
}