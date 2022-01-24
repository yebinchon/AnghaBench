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
struct vlc_http_resource {int /*<<< orphan*/  response; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct vlc_http_resource*) ; 

char *FUNC3(struct vlc_http_resource *res)
{
    int status = FUNC2(res);
    if (status < 200 || status >= 300)
        return NULL;

    const char *type = FUNC1(res->response, "Content-Type");
    return (type != NULL) ? FUNC0(type) : NULL;
}