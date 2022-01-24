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
 scalar_t__ FUNC0 (char**,char const*,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(const char *hostname, unsigned port,
                                 bool secure)
{
    const char *fmt;
    char *url, *proxy = NULL;

    if (FUNC3(hostname, ':') != NULL)
        fmt = port ? "http%s://[%s]:%u" : "http%s://[%s]";
    else
        fmt = port ? "http%s://%s:%u" : "http%s://%s";

    if (FUNC2(FUNC0(&url, fmt, secure ? "s" : "", hostname, port) >= 0))
    {
        proxy = FUNC4(url);
        FUNC1(url);
    }
    return proxy;
}