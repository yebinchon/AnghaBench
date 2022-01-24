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
typedef  int /*<<< orphan*/  cmsMLU ;
struct TYPE_5__ {int (* Read ) (int /*<<< orphan*/ ,TYPE_1__*,char*,int,int) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct _cms_typehandler_struct*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,char*,int,int) ; 

__attribute__((used)) static
cmsBool  FUNC6(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* mlu, cmsUInt32Number* SizeOfTag, const char* Section)
{
    cmsUInt32Number Count;
    char* Text;
    FUNC4(self);

    if (*SizeOfTag < sizeof(cmsUInt32Number)) return FALSE;

    if (!FUNC2(ContextID, io, &Count)) return FALSE;

    if (Count > UINT_MAX - sizeof(cmsUInt32Number)) return FALSE;
    if (*SizeOfTag < Count + sizeof(cmsUInt32Number)) return FALSE;

    Text     = (char*) FUNC1(ContextID, Count+1);
    if (Text == NULL) return FALSE;

    if (io ->Read(ContextID, io,Text, sizeof(cmsUInt8Number), Count) != Count) {
        FUNC0(ContextID, Text);
        return FALSE;
    }

    Text[Count] = 0;

    FUNC3(ContextID, mlu, "PS", Section, Text);
    FUNC0(ContextID, Text);

    *SizeOfTag -= (Count + sizeof(cmsUInt32Number));
    return TRUE;
}