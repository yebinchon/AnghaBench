#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_5__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  head_commit; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  is_corrupt; } ;
typedef  TYPE_2__ CheckHeadData ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 (const char *rsp_content, int rsp_size, CheckHeadData *data)
{
    json_t *object = NULL;
    json_error_t jerror;
    const char *head_commit;

    object = FUNC1 (rsp_content, rsp_size, 0, &jerror);
    if (!object) {
        FUNC6 ("Parse response failed: %s.\n", jerror.text);
        return -1;
    }

    if (FUNC4 (object, "is_corrupted") &&
        FUNC2 (object, "is_corrupted"))
        data->is_corrupt = TRUE;

    if (!data->is_corrupt) {
        head_commit = FUNC3 (object, "head_commit_id");
        if (!head_commit) {
            FUNC6 ("Check head commit for repo %s failed. "
                          "Response doesn't contain head commit id.\n",
                          data->repo_id);
            FUNC0 (object);
            return -1;
        }
        FUNC5 (data->head_commit, head_commit, 40);
    }

    FUNC0 (object);
    return 0;
}