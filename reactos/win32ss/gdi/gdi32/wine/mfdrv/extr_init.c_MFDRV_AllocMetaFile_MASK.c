#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_12__ {int /*<<< orphan*/  hdc; } ;
struct TYPE_11__ {int /*<<< orphan*/  physDev; } ;
struct TYPE_10__ {int handles_size; TYPE_4__ dev; TYPE_1__* mh; scalar_t__ hFile; scalar_t__ cur_handles; void* handles; } ;
struct TYPE_9__ {int mtHeaderSize; int mtVersion; int mtSize; scalar_t__ mtNoParameters; scalar_t__ mtMaxRecord; scalar_t__ mtNoObjects; } ;
typedef  int /*<<< orphan*/  METAHEADER ;
typedef  TYPE_2__ METAFILEDRV_PDEVICE ;
typedef  TYPE_3__ DC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int HANDLE_LIST_INC ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  MFDRV_Funcs ; 
 int /*<<< orphan*/  OBJ_METADC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DC *FUNC7(void)
{
    DC *dc;
    METAFILEDRV_PDEVICE *physDev;

    if (!(dc = FUNC4( OBJ_METADC ))) return NULL;

    physDev = FUNC1(FUNC0(),0,sizeof(*physDev));
    if (!physDev)
    {
        FUNC5( dc );
        return NULL;
    }
    if (!(physDev->mh = FUNC1( FUNC0(), 0, sizeof(*physDev->mh) )))
    {
        FUNC2( FUNC0(), 0, physDev );
        FUNC5( dc );
        return NULL;
    }

    FUNC6( &dc->physDev, &physDev->dev, &MFDRV_Funcs );

    physDev->handles = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, HANDLE_LIST_INC * sizeof(physDev->handles[0]));
    physDev->handles_size = HANDLE_LIST_INC;
    physDev->cur_handles = 0;

    physDev->hFile = 0;

    physDev->mh->mtHeaderSize   = sizeof(METAHEADER) / sizeof(WORD);
    physDev->mh->mtVersion      = 0x0300;
    physDev->mh->mtSize         = physDev->mh->mtHeaderSize;
    physDev->mh->mtNoObjects    = 0;
    physDev->mh->mtMaxRecord    = 0;
    physDev->mh->mtNoParameters = 0;

    FUNC3( physDev->dev.hdc, 0, 0, 0, 0);

    return dc;
}