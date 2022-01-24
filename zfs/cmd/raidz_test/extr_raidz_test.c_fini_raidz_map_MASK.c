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
struct TYPE_4__ {int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  raidz_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(zio_t **zio, raidz_map_t **rm)
{
	FUNC2(*rm);
	FUNC0((*zio)->io_abd, (*zio)->io_size);
	FUNC1(*zio, sizeof (zio_t));

	*zio = NULL;
	*rm = NULL;
}