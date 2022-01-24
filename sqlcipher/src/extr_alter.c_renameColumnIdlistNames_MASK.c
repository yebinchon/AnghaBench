#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nId; TYPE_1__* a; } ;
struct TYPE_4__ {char* zName; } ;
typedef  int /*<<< orphan*/  RenameCtx ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_2__ IdList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 

__attribute__((used)) static void FUNC2(
  Parse *pParse, 
  RenameCtx *pCtx, 
  IdList *pIdList, 
  const char *zOld
){
  if( pIdList ){
    int i;
    for(i=0; i<pIdList->nId; i++){
      char *zName = pIdList->a[i].zName;
      if( 0==FUNC1(zName, zOld) ){
        FUNC0(pParse, pCtx, (void*)zName);
      }
    }
  }
}