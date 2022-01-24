#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _cms_interp_struc {int dummy; } ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  struct _cms_interp_struc const* cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _cms_interp_struc const*) ; 

__attribute__((used)) static
void FUNC1(cmsContext ContextID, register const cmsUInt16Number Input[],
                 register cmsUInt16Number Output[],
                 register const struct _cms_interp_struc* p)
{
    FUNC0(ContextID);
    Output[0] = Input[0];

    FUNC0(p);
}