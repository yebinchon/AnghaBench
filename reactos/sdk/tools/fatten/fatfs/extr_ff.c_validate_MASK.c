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
struct TYPE_4__ {scalar_t__ id; int /*<<< orphan*/  drv; int /*<<< orphan*/  fs_type; } ;
struct TYPE_3__ {scalar_t__ id; TYPE_2__* fs; } ;
typedef  int /*<<< orphan*/  FRESULT ;
typedef  TYPE_1__ FIL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FR_INVALID_OBJECT ; 
 int /*<<< orphan*/  FR_OK ; 
 int STA_NOINIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
FRESULT FUNC2 (	/* FR_OK(0): The object is valid, !=0: Invalid */
	void* obj		/* Pointer to the object FIL/DIR to check validity */
)
{
	FIL *fil = (FIL*)obj;	/* Assuming offset of .fs and .id in the FIL/DIR structure is identical */


	if (!fil || !fil->fs || !fil->fs->fs_type || fil->fs->id != fil->id || (FUNC1(fil->fs->drv) & STA_NOINIT))
		return FR_INVALID_OBJECT;

	FUNC0(fil->fs);		/* Lock file system */

	return FR_OK;
}