#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
typedef  scalar_t__ cmsUInt16Number ;
struct TYPE_6__ {int /*<<< orphan*/  (* Lerp16 ) (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ Interpolation; } ;
typedef  TYPE_2__ cmsInterpParams ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMS_LERP_FLAGS_16BITS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int,int,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,TYPE_2__*) ; 

__attribute__((used)) static
cmsInt32Number FUNC9(cmsInt32Number nNodesToCheck, cmsBool  Down, cmsInt32Number max_err)
{
    cmsUInt32Number i;
    cmsUInt16Number in, out;
    cmsInterpParams* p;
    cmsUInt16Number* Tab;

    Tab = (cmsUInt16Number*) FUNC7(sizeof(cmsUInt16Number)* nNodesToCheck);
    if (Tab == NULL) return 0;

    p = FUNC3(FUNC1(), nNodesToCheck, 1, 1, Tab, CMS_LERP_FLAGS_16BITS);
    if (p == NULL) return 0;

    FUNC0(nNodesToCheck, Tab, Down);

    for (i=0; i <= 0xffff; i++) {

        in = (cmsUInt16Number) i;
        out = 0;

        p ->Interpolation.Lerp16(FUNC1(), &in, &out, p);

        if (Down) out = 0xffff - out;

        if (FUNC5(out - in) > max_err) {

            FUNC2("(%dp): Must be %x, But is %x : ", nNodesToCheck, in, out);
            FUNC4(FUNC1(), p);
            FUNC6(Tab);
            return 0;
        }
    }

    FUNC4(FUNC1(), p);
    FUNC6(Tab);
    return 1;
}