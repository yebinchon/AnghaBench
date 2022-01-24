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
typedef  int gboolean ;
struct TYPE_3__ {int last_sync_time; int sync_interval; } ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) inline static gboolean
FUNC1 (SeafRepo *repo)
{
    int now = (int)FUNC0(NULL);
    return (now > (repo->last_sync_time + repo->sync_interval));
}