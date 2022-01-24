#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sz; void* a; scalar_t__ nRef; void* zFilename; } ;
typedef  TYPE_1__ VFile ;
struct TYPE_6__ {TYPE_1__* aFile; } ;

/* Variables and functions */
 int MX_FILE ; 
 TYPE_1__* FUNC0 (char const*) ; 
 TYPE_2__ g ; 
 int /*<<< orphan*/  FUNC1 (void*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static VFile *FUNC4(const char *zName, int sz, unsigned char *pData){
  VFile *pNew = FUNC0(zName);
  int i;
  if( pNew ) return pNew;
  for(i=0; i<MX_FILE && g.aFile[i].sz>=0; i++){}
  if( i>=MX_FILE ) return 0;
  pNew = &g.aFile[i];
  if( zName ){
    int nName = (int)FUNC3(zName)+1;
    pNew->zFilename = FUNC2(0, nName);
    FUNC1(pNew->zFilename, zName, nName);
  }else{
    pNew->zFilename = 0;
  }
  pNew->nRef = 0;
  pNew->sz = sz;
  pNew->a = FUNC2(0, sz);
  if( sz>0 ) FUNC1(pNew->a, pData, sz);
  return pNew;
}