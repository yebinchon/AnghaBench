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
struct TYPE_2__ {int /*<<< orphan*/  zv_state_lock; scalar_t__ zv_changed; } ;
typedef  TYPE_1__ zvol_state_t ;
struct gendisk {TYPE_1__* private_data; } ;

/* Variables and functions */
 unsigned int DISK_EVENT_MEDIA_CHANGE ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zvol_state_lock ; 

__attribute__((used)) static unsigned int
FUNC4(struct gendisk *disk, unsigned int clearing)
{
	unsigned int mask = 0;

	FUNC2(&zvol_state_lock, RW_READER);

	zvol_state_t *zv = disk->private_data;
	if (zv != NULL) {
		FUNC0(&zv->zv_state_lock);
		mask = zv->zv_changed ? DISK_EVENT_MEDIA_CHANGE : 0;
		zv->zv_changed = 0;
		FUNC1(&zv->zv_state_lock);
	}

	FUNC3(&zvol_state_lock);

	return (mask);
}