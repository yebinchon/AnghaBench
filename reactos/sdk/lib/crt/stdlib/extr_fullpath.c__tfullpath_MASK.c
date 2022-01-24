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
typedef  scalar_t__ _TCHAR ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ERANGE ; 
 size_t FUNC0 (scalar_t__ const*,size_t,scalar_t__*,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (size_t) ; 

_TCHAR* FUNC6(_TCHAR* absPath, const _TCHAR* relPath, size_t maxLength)
{
    _TCHAR* lpBuffer;
    _TCHAR* lpFilePart;
    DWORD retval;

    /* First check if entry relative path was given */
    if (!relPath || relPath[0] == 0)
    {
        /* If not, just try to return current dir */
        return FUNC3(absPath, maxLength);
    }

    /* If no output buffer was given */
    if (!absPath)
    {
        /* Allocate one with fixed length */
        maxLength = MAX_PATH;
        lpBuffer = FUNC5(maxLength);
        if (!lpBuffer)
        {
            errno = ENOMEM;
            return NULL;
        }
    }
    else
    {
        lpBuffer = absPath;
    }

    /* Really get full path */
    retval = FUNC0(relPath, (DWORD)maxLength, lpBuffer, &lpFilePart);
    /* Check for failures */
    if (retval > maxLength)
    {
        /* Path too long, free (if needed) and return */
        if (!absPath)
        {
            FUNC4(lpBuffer);
        }

        errno = ERANGE;
        return NULL;
    }
    else if (!retval)
    {
        /* Other error, free (if needed), translate error, and return */
        if (!absPath)
        {
            FUNC4(lpBuffer);
        }

        FUNC2(FUNC1());
        return NULL;
    }

    /* Return buffer. Up to the caller to free if needed */
    return lpBuffer;
}