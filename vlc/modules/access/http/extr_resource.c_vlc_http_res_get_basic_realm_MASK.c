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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vlc_http_resource*) ; 

char *FUNC2(struct vlc_http_resource *res)
{
    int status = FUNC1(res);
    if (status != 401)
        return NULL;
    return FUNC0(res->response);
}