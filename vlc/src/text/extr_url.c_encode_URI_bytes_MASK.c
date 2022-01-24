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

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void** urihex ; 

__attribute__((used)) static char *FUNC5 (const char *str, size_t *restrict lenp)
{
    char *buf = FUNC2 (3 * *lenp + 1);
    if (FUNC4(buf == NULL))
        return NULL;

    char *out = buf;
    for (size_t i = 0; i < *lenp; i++)
    {
        unsigned char c = str[i];

        if (FUNC0 (c))
            *(out++) = c;
        /* This is URI encoding, not HTTP forms:
         * Space is encoded as '%20', not '+'. */
        else
        {
            *(out++) = '%';
            *(out++) = urihex[c >> 4];
            *(out++) = urihex[c & 0xf];
        }
    }

    *lenp = out - buf;
    out = FUNC3 (buf, *lenp + 1);
    return FUNC1(out != NULL) ? out : buf;
}