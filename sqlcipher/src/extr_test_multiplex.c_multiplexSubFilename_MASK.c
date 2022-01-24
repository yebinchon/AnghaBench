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
struct multiplexReal {scalar_t__ z; } ;
typedef  int /*<<< orphan*/  p ;
struct TYPE_3__ {int nReal; int nName; int /*<<< orphan*/  flags; scalar_t__ zName; struct multiplexReal* aReal; } ;
typedef  TYPE_1__ multiplexGroup ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct multiplexReal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC2 (int) ; 
 struct multiplexReal* FUNC3 (struct multiplexReal*,int) ; 

__attribute__((used)) static int FUNC4(multiplexGroup *pGroup, int iChunk){
  if( iChunk>=pGroup->nReal ){
    struct multiplexReal *p;
    p = FUNC3(pGroup->aReal, (iChunk+1)*sizeof(*p));
    if( p==0 ){
      return SQLITE_NOMEM;
    }
    FUNC0(&p[pGroup->nReal], 0, sizeof(p[0])*(iChunk+1-pGroup->nReal));
    pGroup->aReal = p;
    pGroup->nReal = iChunk+1;
  }
  if( pGroup->zName && pGroup->aReal[iChunk].z==0 ){
    char *z;
    int n = pGroup->nName;
    pGroup->aReal[iChunk].z = z = FUNC2( n+5 );
    if( z==0 ){
      return SQLITE_NOMEM;
    }
    FUNC1(pGroup->zName, pGroup->nName, pGroup->flags, iChunk, z);
  }
  return SQLITE_OK;
}