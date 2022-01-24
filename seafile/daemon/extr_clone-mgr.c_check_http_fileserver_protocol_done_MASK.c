#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ state; int /*<<< orphan*/  use_fileserver_port; int /*<<< orphan*/  server_url; int /*<<< orphan*/  effective_url; int /*<<< orphan*/  http_protocol_version; } ;
struct TYPE_7__ {int /*<<< orphan*/  error_code; int /*<<< orphan*/  version; int /*<<< orphan*/  not_supported; scalar_t__ check_success; } ;
typedef  TYPE_1__ HttpProtocolVersion ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_STATE_CANCELED ; 
 scalar_t__ CLONE_STATE_CANCEL_PENDING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (HttpProtocolVersion *result, void *user_data)
{
    CloneTask *task = user_data;

    if (task->state == CLONE_STATE_CANCEL_PENDING) {
        FUNC2 (task, CLONE_STATE_CANCELED);
        return;
    }

    if (result->check_success && !result->not_supported) {
        task->http_protocol_version = result->version;
        task->effective_url = FUNC1 (task->server_url);
        task->use_fileserver_port = TRUE;
        FUNC0 (task);
    } else {
        /* Wait for periodic retry. */
        FUNC3 (task, result->error_code);
    }
}