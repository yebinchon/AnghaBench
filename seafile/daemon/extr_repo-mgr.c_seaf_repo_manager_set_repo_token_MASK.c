#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  token; } ;
typedef  int /*<<< orphan*/  SeafRepoManager ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  REPO_PROP_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int
FUNC3 (SeafRepoManager *manager, 
                                  SeafRepo *repo,
                                  const char *token)
{
    FUNC0 (repo->token);
    repo->token = FUNC1(token);

    FUNC2 (manager, repo->id, REPO_PROP_TOKEN, token);
    return 0;
}