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
struct _cms_typehandler_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int cmsUInt32Number ;
struct TYPE_5__ {int (* Read ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int,int) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static
void *FUNC6(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number* ColorantOrder;
    cmsUInt32Number Count;
    FUNC3(self);

    *nItems = 0;
    if (!FUNC2(ContextID, io, &Count)) return NULL;
    if (Count > cmsMAXCHANNELS) return NULL;

    ColorantOrder = (cmsUInt8Number*) FUNC0(ContextID, cmsMAXCHANNELS, sizeof(cmsUInt8Number));
    if (ColorantOrder == NULL) return NULL;

    // We use FF as end marker
    FUNC4(ColorantOrder, 0xFF, cmsMAXCHANNELS * sizeof(cmsUInt8Number));

    if (io ->Read(ContextID, io, ColorantOrder, sizeof(cmsUInt8Number), Count) != Count) {

        FUNC1(ContextID, (void*) ColorantOrder);
        return NULL;
    }

    *nItems = 1;
    return (void*) ColorantOrder;

    FUNC3(SizeOfTag);
}