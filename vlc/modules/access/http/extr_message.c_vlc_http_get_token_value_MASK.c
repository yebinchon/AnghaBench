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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char const*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static char *FUNC7(const char *value, const char *token)
{
    value = FUNC4(value, token);
    if (value == NULL)
        return NULL;

    value += FUNC6(value);
    value += FUNC2(value, " \t"); /* BWS */

    if (*value != '=')
        return NULL;

    value++;
    value += FUNC2(value, " \t"); /* BWS */

    size_t len = FUNC5(value);
    if (len == 0)
        return NULL;

    FUNC0(len >= 2);
    value++;
    len -= 2;

    char *out = FUNC1(len + 1), *p;
    if (FUNC3(out == NULL))
        return NULL;

    for (p = out; len > 0; len--)
    {
        char c = *(value++);
        if (c == '\\') /* Quoted pair */
        {
            c = *(value++);
            len--;
        }
        *(p++) = c;
    }
    *p = '\0';
    return out;
}