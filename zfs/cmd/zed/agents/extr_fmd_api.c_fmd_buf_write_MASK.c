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
typedef  int /*<<< orphan*/  fmd_hdl_t ;
struct TYPE_3__ {size_t ci_bufsiz; int /*<<< orphan*/ * ci_bufptr; } ;
typedef  TYPE_1__ fmd_case_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

void
FUNC3(fmd_hdl_t *hdl, fmd_case_t *cp,
    const char *name, const void *buf, size_t size)
{
	FUNC0(FUNC2(name, "data") == 0);
	FUNC0(cp->ci_bufptr != NULL);
	FUNC0(cp->ci_bufsiz >= size);

	FUNC1(buf, cp->ci_bufptr, size);
}