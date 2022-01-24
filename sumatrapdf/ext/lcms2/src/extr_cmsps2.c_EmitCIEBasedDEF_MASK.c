#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt32Number ;
struct TYPE_9__ {struct TYPE_9__* Next; } ;
typedef  TYPE_1__ cmsStage ;
struct TYPE_10__ {TYPE_1__* Elements; } ;
typedef  TYPE_2__ cmsPipeline ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsColorSpaceSignature ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ cmsSigCLutElemType ; 
 scalar_t__ cmsSigCurveSetElemType ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
int FUNC10(cmsContext ContextID, cmsIOHANDLER* m, cmsPipeline* Pipeline, cmsUInt32Number Intent, cmsCIEXYZ* BlackPoint)
{
    const char* PreMaj;
    const char* PostMaj;
    const char* PreMin, *PostMin;
    cmsStage* mpe;

    mpe = Pipeline ->Elements;

    switch (FUNC7(ContextID, mpe)) {
    case 3:

            FUNC5(ContextID, m, "[ /CIEBasedDEF\n");
            PreMaj ="<";
            PostMaj= ">\n";
            PreMin = PostMin = "";
            break;
    case 4:
            FUNC5(ContextID, m, "[ /CIEBasedDEFG\n");
            PreMaj = "[";
            PostMaj = "]\n";
            PreMin = "<";
            PostMin = ">\n";
            break;
    default:
            return 0;

    }

    FUNC5(ContextID, m, "<<\n");

    if (FUNC9(ContextID, mpe) == cmsSigCurveSetElemType) {

        FUNC5(ContextID, m, "/DecodeDEF [ ");
        FUNC2(ContextID, m, FUNC8(ContextID, mpe), FUNC6(mpe));
        FUNC5(ContextID, m, "]\n");

        mpe = mpe ->Next;
    }

    if (FUNC9(ContextID, mpe) == cmsSigCLutElemType) {

            FUNC5(ContextID, m, "/Table ");
            FUNC4(ContextID, m, mpe, PreMaj, PostMaj, PreMin, PostMin, FALSE, (cmsColorSpaceSignature) 0);
            FUNC5(ContextID, m, "]\n");
    }

    FUNC1(ContextID, m);
    FUNC3(ContextID, m, BlackPoint);
    FUNC0(ContextID, m, Intent);

    FUNC5(ContextID, m, "   >>\n");
    FUNC5(ContextID, m, "]\n");

    return 1;
}