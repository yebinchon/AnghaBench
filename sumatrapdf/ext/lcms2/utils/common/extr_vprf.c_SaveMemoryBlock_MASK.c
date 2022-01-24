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
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsBool ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

cmsBool FUNC4(const cmsUInt8Number* Buffer, cmsUInt32Number dwLen, const char* Filename)
{
    FILE* out = FUNC2(Filename, "wb");
    if (out == NULL) {
        FUNC0("Cannot create '%s'", Filename);
        return FALSE;
    }

    if (FUNC3(Buffer, 1, dwLen, out) != dwLen) {
        FUNC0("Cannot write %ld bytes to %s", dwLen, Filename);
        return FALSE;
    }

    if (FUNC1(out) != 0) {
        FUNC0("Error flushing file '%s'", Filename);
        return FALSE;
    }

    return TRUE;
}