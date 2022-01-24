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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
void *FUNC4(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsFloat64Number*  array_double;
    cmsUInt32Number i, n;
    FUNC3(self);

    *nItems = 0;
    n = SizeOfTag / sizeof(cmsUInt32Number);
    array_double = (cmsFloat64Number*) FUNC0(ContextID, n, sizeof(cmsFloat64Number));
    if (array_double == NULL) return NULL;

    for (i=0; i < n; i++) {

        if (!FUNC2(ContextID, io, &array_double[i])) {

            FUNC1(ContextID, array_double);
            return NULL;
        }
    }

    *nItems = n;
    return (void*) array_double;
}