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
struct TYPE_3__ {scalar_t__ io_size; scalar_t__ io_type; int /*<<< orphan*/  io_abd; } ;
typedef  TYPE_1__ zio_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ZIO_TYPE_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(zio_t *zio, abd_t *data, uint64_t size)
{
	FUNC0(zio->io_size > size);

	if (zio->io_type == ZIO_TYPE_READ)
		FUNC1(data, zio->io_abd, size);
}