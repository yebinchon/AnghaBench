#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct TYPE_5__ {int /*<<< orphan*/  user_ns; } ;
typedef  TYPE_1__ cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  CAP_FSETID ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(const cred_t *cr, uid_t owner)
{
	if (FUNC1(cr) == owner)
		return (0);

#if defined(CONFIG_USER_NS)
	if (!kuid_has_mapping(cr->user_ns, SUID_TO_KUID(owner)))
		return (EPERM);
#endif

	return (FUNC3(cr, CAP_FSETID, B_FALSE, EPERM));
}