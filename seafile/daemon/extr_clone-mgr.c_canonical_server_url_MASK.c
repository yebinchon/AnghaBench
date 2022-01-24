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
 char* FUNC0 (char const*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2 (const char *url_in)
{
    char *url = FUNC0(url_in);
    int len = FUNC1(url);

    if (url[len - 1] == '/')
        url[len - 1] = 0;

    return url;
}