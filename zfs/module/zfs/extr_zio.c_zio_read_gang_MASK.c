#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  io_bookmark; int /*<<< orphan*/  io_priority; int /*<<< orphan*/  io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  zio_gang_node_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zio_gang_issue_func_done ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zio_t *
FUNC4(zio_t *pio, blkptr_t *bp, zio_gang_node_t *gn, abd_t *data,
    uint64_t offset)
{
	if (gn != NULL)
		return (pio);

	return (FUNC3(pio, pio->io_spa, bp, FUNC2(data, offset),
	    FUNC0(bp), zio_gang_issue_func_done,
	    NULL, pio->io_priority, FUNC1(pio),
	    &pio->io_bookmark));
}