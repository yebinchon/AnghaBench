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
struct TYPE_4__ {int /*<<< orphan*/  headers; int /*<<< orphan*/  url; int /*<<< orphan*/  context; int /*<<< orphan*/  flags; int /*<<< orphan*/  headers_len; TYPE_1__ hdr; } ;
typedef  TYPE_2__ open_url_task_t ;
typedef  int /*<<< orphan*/  appinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(task_header_t *hdr)
{
    open_url_task_t *task = (open_url_task_t*)hdr;

    FUNC1("%p\n", task->hdr.hdr);

    FUNC0((appinfo_t*)task->hdr.hdr, task->url, task->headers,
            task->headers_len, task->flags, task->context);
    FUNC2(task->url);
    FUNC2(task->headers);
}