#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_11__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
struct TYPE_10__ {int nData; char* pData; } ;
struct TYPE_13__ {TYPE_2__ term; TYPE_1__ data; struct TYPE_13__* next; } ;
struct TYPE_12__ {struct TYPE_12__* parentWriter; scalar_t__ iHeight; TYPE_4__* last; TYPE_4__* first; } ;
typedef  TYPE_3__ InteriorWriter ;
typedef  TYPE_4__ InteriorBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int ROOT_MAX ; 
 int SQLITE_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(fulltext_vtab *v, InteriorWriter *pWriter,
                                  char **ppRootInfo, int *pnRootInfo,
                                  sqlite_int64 *piEndBlockid){
  InteriorBlock *block = pWriter->first;
  sqlite_int64 iBlockid = 0;
  int rc;

  /* If we can fit the segment inline */
  if( block==pWriter->last && block->data.nData<ROOT_MAX ){
    *ppRootInfo = block->data.pData;
    *pnRootInfo = block->data.nData;
    return SQLITE_OK;
  }

  /* Flush the first block to %_segments, and create a new level of
  ** interior node.
  */
  FUNC0(block);
  rc = FUNC1(v, block->data.pData, block->data.nData, &iBlockid);
  if( rc!=SQLITE_OK ) return rc;
  *piEndBlockid = iBlockid;

  pWriter->parentWriter = FUNC4(sizeof(*pWriter->parentWriter));
  FUNC3(pWriter->iHeight+1,
                     block->term.pData, block->term.nData,
                     iBlockid, pWriter->parentWriter);

  /* Flush additional blocks and append to the higher interior
  ** node.
  */
  for(block=block->next; block!=NULL; block=block->next){
    FUNC0(block);
    rc = FUNC1(v, block->data.pData, block->data.nData, &iBlockid);
    if( rc!=SQLITE_OK ) return rc;
    *piEndBlockid = iBlockid;

    FUNC2(pWriter->parentWriter,
                         block->term.pData, block->term.nData, iBlockid);
  }

  /* Parent node gets the chance to be the root. */
  return FUNC5(v, pWriter->parentWriter,
                                ppRootInfo, pnRootInfo, piEndBlockid);
}