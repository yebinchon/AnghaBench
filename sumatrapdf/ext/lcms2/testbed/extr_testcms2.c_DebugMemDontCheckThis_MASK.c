#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
struct TYPE_2__ {int DontCheck; } ;
typedef  TYPE_1__ _cmsMemoryBlock ;

/* Variables and functions */
 int SIZE_OF_MEM_HEADER ; 

void FUNC0(void *Ptr)
{
     _cmsMemoryBlock* blk = (_cmsMemoryBlock*) (((cmsUInt8Number*) Ptr) - SIZE_OF_MEM_HEADER);

     blk ->DontCheck = 1;
}