#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_size; scalar_t__ io_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  max_data_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ zio_bench ; 

__attribute__((used)) static void
FUNC2(void)
{
	zio_bench.io_offset = 0;
	zio_bench.io_size = max_data_size;

	/*
	 * To permit larger column sizes these have to be done
	 * allocated using aligned alloc instead of zio_abd_buf_alloc
	 */
	zio_bench.io_abd = FUNC1(max_data_size);

	FUNC0(&zio_bench);
}