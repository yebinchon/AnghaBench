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
struct TYPE_4__ {int /*<<< orphan*/  os_spa; } ;
typedef  TYPE_1__ objset_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  SPA_FEATURE_USEROBJ_ACCOUNTING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(objset_t *os)
{
	return (FUNC0(os) &&
	    FUNC1(os->os_spa, SPA_FEATURE_USEROBJ_ACCOUNTING));
}