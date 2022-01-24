#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* sync_mgr; } ;
struct TYPE_4__ {int download_limit; } ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_DOWNLOAD_LIMIT ; 
 TYPE_2__* seaf ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int
FUNC1 (int limit, GError **error)
{
    if (limit < 0)
        limit = 0;

    seaf->sync_mgr->download_limit = limit;

    return FUNC0 (seaf, KEY_DOWNLOAD_LIMIT, limit);
}