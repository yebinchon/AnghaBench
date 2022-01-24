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
struct TYPE_3__ {int /*<<< orphan*/  log; int /*<<< orphan*/  cache; int /*<<< orphan*/  min_uses; TYPE_2__* file; } ;
typedef  TYPE_1__ ngx_open_file_cache_cleanup_t ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *data)
{
    ngx_open_file_cache_cleanup_t  *c = data;

    c->file->count--;

    FUNC0(c->cache, c->file, c->min_uses, c->log);

    /* drop one or two expired open files */
    FUNC1(c->cache, 1, c->log);
}