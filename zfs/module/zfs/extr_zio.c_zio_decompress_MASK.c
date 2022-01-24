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
struct TYPE_4__ {scalar_t__ io_error; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_bp; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ zio_injection_enabled ; 

__attribute__((used)) static void
FUNC6(zio_t *zio, abd_t *data, uint64_t size)
{
	if (zio->io_error == 0) {
		void *tmp = FUNC2(data, size);
		int ret = FUNC4(FUNC0(zio->io_bp),
		    zio->io_abd, tmp, zio->io_size, size);
		FUNC3(data, tmp, size);

		if (zio_injection_enabled && ret == 0)
			ret = FUNC5(zio, EINVAL);

		if (ret != 0)
			zio->io_error = FUNC1(EIO);
	}
}