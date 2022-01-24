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
typedef  int /*<<< orphan*/  cmsVEC3 ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int cmsColorSpaceSignature ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  cmsSigLabData 129 
#define  cmsSigXYZData 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsBool FUNC5(cmsContext ContextID, cmsPipeline* Result, cmsColorSpaceSignature InPCS, cmsColorSpaceSignature OutPCS, cmsMAT3* m, cmsVEC3* off)
{
    cmsFloat64Number* m_as_dbl = (cmsFloat64Number*) m;
    cmsFloat64Number* off_as_dbl = (cmsFloat64Number*) off;

    // Handle PCS mismatches. A specialized stage is added to the LUT in such case
    switch (InPCS) {

    case cmsSigXYZData: // Input profile operates in XYZ

        switch (OutPCS) {

        case cmsSigXYZData:  // XYZ -> XYZ
            if (!FUNC0(ContextID, m, off) &&
                !FUNC3(ContextID, Result, cmsAT_END, FUNC4(ContextID, 3, 3, m_as_dbl, off_as_dbl)))
                return FALSE;
            break;

        case cmsSigLabData:  // XYZ -> Lab
            if (!FUNC0(ContextID, m, off) &&
                !FUNC3(ContextID, Result, cmsAT_END, FUNC4(ContextID, 3, 3, m_as_dbl, off_as_dbl)))
                return FALSE;
            if (!FUNC3(ContextID, Result, cmsAT_END, FUNC2(ContextID)))
                return FALSE;
            break;

        default:
            return FALSE;   // Colorspace mismatch
        }
        break;

    case cmsSigLabData: // Input profile operates in Lab

        switch (OutPCS) {

        case cmsSigXYZData:  // Lab -> XYZ

            if (!FUNC3(ContextID, Result, cmsAT_END, FUNC1(ContextID)))
                return FALSE;
            if (!FUNC0(ContextID, m, off) &&
                !FUNC3(ContextID, Result, cmsAT_END, FUNC4(ContextID, 3, 3, m_as_dbl, off_as_dbl)))
                return FALSE;
            break;

        case cmsSigLabData:  // Lab -> Lab

            if (!FUNC0(ContextID, m, off)) {
                if (!FUNC3(ContextID, Result, cmsAT_END, FUNC1(ContextID)) ||
                    !FUNC3(ContextID, Result, cmsAT_END, FUNC4(ContextID, 3, 3, m_as_dbl, off_as_dbl)) ||
                    !FUNC3(ContextID, Result, cmsAT_END, FUNC2(ContextID)))
                    return FALSE;
            }
            break;

        default:
            return FALSE;  // Mismatch
        }
        break;

        // On colorspaces other than PCS, check for same space
    default:
        if (InPCS != OutPCS) return FALSE;
        break;
    }

    return TRUE;
}