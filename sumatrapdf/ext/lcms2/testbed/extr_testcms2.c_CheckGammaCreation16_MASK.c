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
typedef  scalar_t__ cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,double) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC6(void)
{
    cmsToneCurve* LinGamma = FUNC3(FUNC1(), 1.0);
    cmsInt32Number i;
    cmsUInt16Number in, out;

    for (i=0; i < 0xffff; i++) {

        in = (cmsUInt16Number) i;
        out = FUNC4(FUNC1(), LinGamma, in);
        if (in != out) {
            FUNC2("(lin gamma): Must be %x, But is %x : ", in, out);
            FUNC5(FUNC1(), LinGamma);
            return 0;
        }
    }

    if (!FUNC0(LinGamma, 1.0)) return 0;

    FUNC5(FUNC1(), LinGamma);
    return 1;

}