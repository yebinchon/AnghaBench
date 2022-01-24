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
typedef  size_t UINT ;
struct TYPE_5__ {size_t handles_size; scalar_t__* handles; scalar_t__ cur_handles; TYPE_1__* emh; } ;
struct TYPE_4__ {scalar_t__ nHandles; } ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  TYPE_2__ EMFDRV_PDEVICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HANDLE_LIST_INC ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC4( PHYSDEV dev, HGDIOBJ obj )
{
    EMFDRV_PDEVICE *physDev = FUNC2( dev );
    UINT index;

    for(index = 0; index < physDev->handles_size; index++)
        if(physDev->handles[index] == 0) break;
    if(index == physDev->handles_size) {
        physDev->handles_size += HANDLE_LIST_INC;
	physDev->handles = FUNC1(FUNC0(), HEAP_ZERO_MEMORY,
				       physDev->handles,
				       physDev->handles_size * sizeof(physDev->handles[0]));
    }
    physDev->handles[index] = FUNC3( obj );

    physDev->cur_handles++;
    if(physDev->cur_handles > physDev->emh->nHandles)
        physDev->emh->nHandles++;

    return index + 1; /* index 0 is reserved for the hmf, so we increment everything by 1 */
}