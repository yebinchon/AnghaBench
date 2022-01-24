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
struct HttpAuthInfo {struct HttpAuthInfo* scheme; struct HttpAuthInfo* auth_data; int /*<<< orphan*/  cred; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct HttpAuthInfo*) ; 

__attribute__((used)) static void FUNC4( struct HttpAuthInfo *authinfo )
{
    if (!authinfo) return;

    if (FUNC2(&authinfo->ctx))
        FUNC0(&authinfo->ctx);
    if (FUNC2(&authinfo->cred))
        FUNC1(&authinfo->cred);

    FUNC3(authinfo->auth_data);
    FUNC3(authinfo->scheme);
    FUNC3(authinfo);
}