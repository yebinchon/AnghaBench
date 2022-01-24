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
typedef  int /*<<< orphan*/  zstream_t ;
struct TYPE_4__ {int /*<<< orphan*/ * zf_dnode; int /*<<< orphan*/  zf_lock; int /*<<< orphan*/  zf_stream; } ;
typedef  TYPE_1__ zfetch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(zfetch_t *zf)
{
	zstream_t *zs;

	FUNC4(&zf->zf_lock);
	while ((zs = FUNC2(&zf->zf_stream)) != NULL)
		FUNC0(zf, zs);
	FUNC5(&zf->zf_lock);
	FUNC1(&zf->zf_stream);
	FUNC3(&zf->zf_lock);

	zf->zf_dnode = NULL;
}