#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct chmHttpSlave {int /*<<< orphan*/  fd; TYPE_1__* server; } ;
struct chmFile {int dummy; } ;
struct TYPE_2__ {struct chmFile* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct chmHttpSlave*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct chmFile*) ; 

__attribute__((used)) static void *FUNC3(void *param)
{
    struct chmHttpSlave *slave;
    struct chmFile *file;

    /* grab our relevant information */
    slave = (struct chmHttpSlave *)param;
    file = slave->server->file;

    /* handle request */
    FUNC2(slave->fd, file);

    /* free our resources and return */
    FUNC0(slave->fd);
    FUNC1(slave);
    return NULL;
}