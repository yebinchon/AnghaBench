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
struct vlc_http_resource {int /*<<< orphan*/ * response; int /*<<< orphan*/  host; int /*<<< orphan*/  authority; int /*<<< orphan*/  path; int /*<<< orphan*/  username; int /*<<< orphan*/  password; int /*<<< orphan*/  agent; int /*<<< orphan*/  referrer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vlc_http_resource *res)
{
    FUNC0(res->referrer);
    FUNC0(res->agent);
    FUNC0(res->password);
    FUNC0(res->username);
    FUNC0(res->path);
    FUNC0(res->authority);
    FUNC0(res->host);

    if (res->response != NULL)
        FUNC1(res->response);
}