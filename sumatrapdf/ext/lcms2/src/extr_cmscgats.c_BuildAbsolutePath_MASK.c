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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_CHAR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsBool FUNC3(const char *relPath, const char *basePath, char *buffer, cmsUInt32Number MaxLen)
{
    char *tail;
    cmsUInt32Number len;

    // Already absolute?
    if (FUNC0(relPath)) {

        FUNC1(buffer, relPath, MaxLen);
        buffer[MaxLen-1] = 0;
        return TRUE;
    }

    // No, search for last
    FUNC1(buffer, basePath, MaxLen);
    buffer[MaxLen-1] = 0;

    tail = FUNC2(buffer, DIR_CHAR);
    if (tail == NULL) return FALSE;    // Is not absolute and has no separators??

    len = (cmsUInt32Number) (tail - buffer);
    if (len >= MaxLen) return FALSE;

    // No need to assure zero terminator over here
    FUNC1(tail + 1, relPath, MaxLen - len);

    return TRUE;
}