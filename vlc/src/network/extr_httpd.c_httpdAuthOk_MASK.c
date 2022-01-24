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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static bool FUNC5(const char *user, const char *pass, const char *b64)
{
    if (!*user && !*pass)
        return true;

    if (!b64)
        return false;

    if (FUNC3(b64, "BASIC", 5))
        return false;

    b64 += 5;
    while (*b64 == ' ')
        b64++;

    char *given_user = FUNC4(b64);
    if (!given_user)
        return false;

    char *given_pass = NULL;
    given_pass = FUNC1 (given_user, ':');
    if (!given_pass)
        goto auth_failed;

    *given_pass++ = '\0';

    if (FUNC2 (given_user, user))
        goto auth_failed;

    if (FUNC2 (given_pass, pass))
        goto auth_failed;

    FUNC0(given_user);
    return true;

auth_failed:
    FUNC0(given_user);
    return false;
}