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
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t const) ; 
 char* FUNC2 (char const*) ; 
 size_t const FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(const char *value, const char *token)
{
    const size_t length = FUNC0(token);

    while (value != NULL)
    {
        if (FUNC3(value) == length
         && !FUNC1(token, value, length))
            return value;

        value = FUNC2(value);
    }

    return NULL;
}