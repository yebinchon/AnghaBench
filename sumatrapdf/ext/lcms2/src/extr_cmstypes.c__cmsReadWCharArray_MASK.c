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
typedef  scalar_t__ wchar_t ;
typedef  size_t cmsUInt32Number ;
typedef  scalar_t__ cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static
cmsBool FUNC2(cmsContext ContextID, cmsIOHANDLER* io, cmsUInt32Number n, wchar_t* Array)
{
    cmsUInt32Number i;
    cmsUInt16Number tmp;

    FUNC0(io != NULL);

    for (i=0; i < n; i++) {

        if (Array != NULL) {

            if (!FUNC1(ContextID, io, &tmp)) return FALSE;
            Array[i] = (wchar_t) tmp;
        }
        else {
            if (!FUNC1(ContextID, io, NULL)) return FALSE;
        }

    }
    return TRUE;
}