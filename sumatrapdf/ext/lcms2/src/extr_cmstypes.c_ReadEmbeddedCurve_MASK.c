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
struct _cms_typehandler_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsTagTypeSignature ;
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsERROR_UNKNOWN_EXTENSION ; 
#define  cmsSigCurveType 129 
#define  cmsSigParametricCurveType 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static
cmsToneCurve* FUNC5(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io)
{
    cmsTagTypeSignature  BaseType;
    cmsUInt32Number nItems;

    BaseType = FUNC2(ContextID, io);
    switch (BaseType) {

            case cmsSigCurveType:
                return (cmsToneCurve*) FUNC0(ContextID, self, io, &nItems, 0);

            case cmsSigParametricCurveType:
                return (cmsToneCurve*) FUNC1(ContextID, self, io, &nItems, 0);

            default:
                {
                    char String[5];

                    FUNC3(String, (cmsTagSignature) BaseType);
                    FUNC4(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown curve type '%s'", String);
                }
                return NULL;
    }
}