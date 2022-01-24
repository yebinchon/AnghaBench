#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  os_spa; TYPE_1__* os_phys; } ;
typedef  TYPE_2__ objset_t ;
typedef  int boolean_t ;
struct TYPE_5__ {size_t os_type; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  SPA_FEATURE_PROJECT_QUOTA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** used_cbs ; 

boolean_t
FUNC2(objset_t *os)
{
	return (used_cbs[os->os_phys->os_type] != NULL &&
	    FUNC0(os) != NULL &&
	    FUNC1(os->os_spa, SPA_FEATURE_PROJECT_QUOTA));
}