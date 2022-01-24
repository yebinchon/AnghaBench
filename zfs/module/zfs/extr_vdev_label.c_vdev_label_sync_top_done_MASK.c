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
struct TYPE_3__ {int /*<<< orphan*/  io_error; scalar_t__* io_private; } ;
typedef  TYPE_1__ zio_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC2(zio_t *zio)
{
	uint64_t *good_writes = zio->io_private;

	if (*good_writes == 0)
		zio->io_error = FUNC0(EIO);

	FUNC1(good_writes, sizeof (uint64_t));
}