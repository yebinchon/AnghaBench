#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rtfClass; int rtfMajor; } ;
typedef  TYPE_1__ RTF_Info ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int TRUE ; 
 scalar_t__ rtfEOF ; 
 scalar_t__ rtfText ; 

__attribute__((used)) static DWORD FUNC8( RTF_Info *info, BYTE **out )
{
    DWORD read = 0, size = 1024;
    BYTE *buf, val;
    BOOL flip;

    *out = NULL;

    if (info->rtfClass != rtfText)
    {
        FUNC0("Called with incorrect token\n");
        return 0;
    }

    buf = FUNC3( FUNC2(), 0, size );
    if (!buf) return 0;

    val = info->rtfMajor;
    for (flip = TRUE;; flip = !flip)
    {
        FUNC7( info );
        if (info->rtfClass == rtfEOF)
        {
            FUNC4( FUNC2(), 0, buf );
            return 0;
        }
        if (info->rtfClass != rtfText) break;
        if (flip)
        {
            if (read >= size)
            {
                size *= 2;
                buf = FUNC5( FUNC2(), 0, buf, size );
                if (!buf) return 0;
            }
            buf[read++] = FUNC6(val) * 16 + FUNC6(info->rtfMajor);
        }
        else
            val = info->rtfMajor;
    }
    if (flip) FUNC1("wrong hex string\n");

    *out = buf;
    return read;
}