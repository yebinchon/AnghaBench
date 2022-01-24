#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pFuncArg; } ;
struct TYPE_12__ {scalar_t__ isTabFunc; } ;
struct SrcList_item {TYPE_2__ u1; TYPE_1__ fg; int /*<<< orphan*/  pOn; int /*<<< orphan*/  pSelect; int /*<<< orphan*/  pSchema; scalar_t__ zDatabase; } ;
struct TYPE_15__ {char* zDb; scalar_t__ bVarOnly; int /*<<< orphan*/  pSchema; TYPE_10__* pParse; int /*<<< orphan*/  pName; int /*<<< orphan*/  zType; } ;
struct TYPE_14__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_11__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ SrcList ;
typedef  TYPE_4__ DbFixer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,char const*) ; 

int FUNC7(
  DbFixer *pFix,       /* Context of the fixation */
  SrcList *pList       /* The Source list to check and modify */
){
  int i;
  const char *zDb;
  struct SrcList_item *pItem;

  if( FUNC0(pList==0) ) return 0;
  zDb = pFix->zDb;
  for(i=0, pItem=pList->a; i<pList->nSrc; i++, pItem++){
    if( pFix->bVarOnly==0 ){
      if( pItem->zDatabase && FUNC6(pItem->zDatabase, zDb) ){
        FUNC2(pFix->pParse,
            "%s %T cannot reference objects in database %s",
            pFix->zType, pFix->pName, pItem->zDatabase);
        return 1;
      }
      FUNC1(pFix->pParse->db, pItem->zDatabase);
      pItem->zDatabase = 0;
      pItem->pSchema = pFix->pSchema;
    }
#if !defined(SQLITE_OMIT_VIEW) || !defined(SQLITE_OMIT_TRIGGER)
    if( FUNC5(pFix, pItem->pSelect) ) return 1;
    if( FUNC3(pFix, pItem->pOn) ) return 1;
#endif
    if( pItem->fg.isTabFunc && FUNC4(pFix, pItem->u1.pFuncArg) ){
      return 1;
    }
  }
  return 0;
}