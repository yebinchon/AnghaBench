#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_2__ {int /*<<< orphan*/  mq_mgr; } ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 TYPE_1__* seaf ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

json_t *
FUNC1 (GError **error)
{
    return FUNC0 (seaf->mq_mgr);
}