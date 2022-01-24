#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT16 ;
typedef  size_t UINT ;
struct TYPE_4__ {size_t handles_size; scalar_t__* handles; scalar_t__ cur_handles; TYPE_1__* mh; } ;
struct TYPE_3__ {scalar_t__ mtNoObjects; } ;
typedef  scalar_t__ PHYSDEV ;
typedef  TYPE_2__ METAFILEDRV_PDEVICE ;
typedef  int /*<<< orphan*/  HGDIOBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HANDLE_LIST_INC ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

UINT FUNC3( PHYSDEV dev, HGDIOBJ obj )
{
    METAFILEDRV_PDEVICE *physDev = (METAFILEDRV_PDEVICE *)dev;
    UINT16 index;

    for(index = 0; index < physDev->handles_size; index++)
        if(physDev->handles[index] == 0) break;
    if(index == physDev->handles_size) {
        physDev->handles_size += HANDLE_LIST_INC;
        physDev->handles = FUNC1(FUNC0(), HEAP_ZERO_MEMORY,
                                       physDev->handles,
                                       physDev->handles_size * sizeof(physDev->handles[0]));
    }
    physDev->handles[index] = FUNC2( obj );

    physDev->cur_handles++;
    if(physDev->cur_handles > physDev->mh->mtNoObjects)
        physDev->mh->mtNoObjects++;

    return index ; /* index 0 is not reserved for metafiles */
}