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
 char* FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static char *
FUNC6 (const char *url)
{
    const char *host;
    char *colon;
    char *url_no_port;
    char *ret = NULL;

    /* Just return the url itself if it's invalid. */
    if (FUNC4(url) <= FUNC4("http://"))
        return FUNC2(url);

    /* Skip protocol schem. */
    host = url + FUNC4("http://");

    colon = FUNC5 (host, ':');
    if (colon) {
        url_no_port = FUNC3(url, colon - url);
        ret = FUNC1(url_no_port, ":8082", NULL);
        FUNC0 (url_no_port);
    } else {
        ret = FUNC1(url, ":8082", NULL);
    }

    return ret;
}