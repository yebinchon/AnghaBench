#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  hreftype; int /*<<< orphan*/  guid; } ;
struct TYPE_16__ {TYPE_2__* pLibInfo; TYPE_1__* pTblDir; } ;
struct TYPE_15__ {int offset; int /*<<< orphan*/  entry; int /*<<< orphan*/  hreftype; int /*<<< orphan*/  guid; } ;
struct TYPE_14__ {int length; int /*<<< orphan*/  offset; } ;
struct TYPE_13__ {int /*<<< orphan*/  guid_list; } ;
struct TYPE_12__ {TYPE_3__ pGuidTab; } ;
typedef  TYPE_4__ TLBGuid ;
typedef  TYPE_5__ TLBContext ;
typedef  TYPE_6__ MSFT_GuidEntry ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DO_NOT_SEEK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(TLBContext *pcx)
{
    TLBGuid *guid;
    MSFT_GuidEntry entry;
    int offs = 0;

    FUNC1(pcx, pcx->pTblDir->pGuidTab.offset);
    while (1) {
        if (offs >= pcx->pTblDir->pGuidTab.length)
            return S_OK;

        FUNC0(&entry, sizeof(MSFT_GuidEntry), pcx, DO_NOT_SEEK);

        guid = FUNC2(sizeof(TLBGuid));

        guid->offset = offs;
        guid->guid = entry.guid;
        guid->hreftype = entry.hreftype;

        FUNC3(&pcx->pLibInfo->guid_list, &guid->entry);

        offs += sizeof(MSFT_GuidEntry);
    }
}