#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_header_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  directory_len; int /*<<< orphan*/  directory; TYPE_1__ hdr; } ;
typedef  TYPE_2__ get_current_dir_task_t ;
typedef  int /*<<< orphan*/  ftp_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(task_header_t *hdr)
{
    get_current_dir_task_t *task = (get_current_dir_task_t*)hdr;
    ftp_session_t *session = (ftp_session_t*)task->hdr.hdr;

    FUNC1("%p\n", session);

    FUNC0(session, task->directory, task->directory_len);
}