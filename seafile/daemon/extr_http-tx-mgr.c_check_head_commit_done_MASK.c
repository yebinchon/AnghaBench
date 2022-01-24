#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  result ;
struct TYPE_7__ {struct TYPE_7__* token; struct TYPE_7__* host; int /*<<< orphan*/  user_data; int /*<<< orphan*/  (* callback ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  error_code; int /*<<< orphan*/  head_commit; int /*<<< orphan*/  is_deleted; int /*<<< orphan*/  is_corrupt; int /*<<< orphan*/  success; } ;
struct TYPE_6__ {int /*<<< orphan*/  error_code; int /*<<< orphan*/  head_commit; int /*<<< orphan*/  is_deleted; int /*<<< orphan*/  is_corrupt; int /*<<< orphan*/  check_success; } ;
typedef  TYPE_1__ HttpHeadCommit ;
typedef  TYPE_2__ CheckHeadData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void *vdata)
{
    CheckHeadData *data = vdata;
    HttpHeadCommit result;

    FUNC2 (&result, 0, sizeof(result));
    result.check_success = data->success;
    result.is_corrupt = data->is_corrupt;
    result.is_deleted = data->is_deleted;
    FUNC1 (result.head_commit, data->head_commit, 40);
    result.error_code = data->error_code;

    data->callback (&result, data->user_data);

    FUNC0 (data->host);
    FUNC0 (data->token);
    FUNC0 (data);
}