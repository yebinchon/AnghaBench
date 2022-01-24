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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 char* ProgramName ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ Verbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void FUNC2(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *Text)
{
    if (Verbose >= 0)
        FUNC1(stderr, "[%s]: %s\n", ProgramName, Text);

    FUNC0(ErrorCode);
    FUNC0(ContextID);
}