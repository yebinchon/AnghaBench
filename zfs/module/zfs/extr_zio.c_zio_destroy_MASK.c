#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  io_cv; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_child_list; int /*<<< orphan*/  io_parent_list; int /*<<< orphan*/  io_alloc_list; } ;
typedef  TYPE_1__ zio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zio_cache ; 

__attribute__((used)) static void
FUNC5(zio_t *zio)
{
	FUNC3(&zio->io_alloc_list);
	FUNC2(&zio->io_parent_list);
	FUNC2(&zio->io_child_list);
	FUNC4(&zio->io_lock);
	FUNC0(&zio->io_cv);
	FUNC1(zio_cache, zio);
}