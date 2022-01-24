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
struct block_t {int dummy; } ;

/* Variables and functions */
 struct block_t* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vlc_http_resource*) ; 

struct block_t *FUNC2(struct vlc_http_resource *res)
{
    int status = FUNC1(res);
    if (status < 200 || status >= 300)
        return NULL; /* do not "read" redirect or error message */

    return FUNC0(res->response);
}