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
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,size_t) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static bool FUNC4(const char *psz_filename,
                             const char *psz_ignored_exts)
{
    if (psz_ignored_exts == NULL)
        return false;

    const char *ext = FUNC3(psz_filename, '.');
    if (ext == NULL)
        return false;

    size_t extlen = FUNC1(++ext);

    for (const char *type = psz_ignored_exts, *end; type[0]; type = end + 1)
    {
        end = FUNC0(type, ',');
        if (end == NULL)
            end = type + FUNC1(type);

        if (type + extlen == end && !FUNC2(ext, type, extlen))
            return true;

        if (*end == '\0')
            break;
    }

    return false;
}