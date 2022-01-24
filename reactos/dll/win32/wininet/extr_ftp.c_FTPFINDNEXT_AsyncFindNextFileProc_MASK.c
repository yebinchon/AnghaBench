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
struct TYPE_4__ {int /*<<< orphan*/  find_data; TYPE_1__ hdr; } ;
typedef  TYPE_2__ find_next_task_t ;
typedef  int /*<<< orphan*/  WININETFTPFINDNEXTW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(task_header_t *hdr)
{
    find_next_task_t *task = (find_next_task_t*)hdr;

    FUNC0((WININETFTPFINDNEXTW*)task->hdr.hdr, task->find_data);
}