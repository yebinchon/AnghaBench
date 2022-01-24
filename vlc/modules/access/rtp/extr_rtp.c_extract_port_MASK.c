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
 int FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static int FUNC2 (char **phost)
{
    char *host = *phost, *port;

    if (host[0] == '[')
    {
        host = ++*phost; /* skip '[' */
        port = FUNC1 (host, ']');
        if (port)
            *port++ = '\0'; /* skip ']' */
    }
    else
        port = FUNC1 (host, ':');

    if (port == NULL)
        return 0;
    *port++ = '\0'; /* skip ':' */
    return FUNC0 (port);
}