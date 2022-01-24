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
struct TYPE_3__ {unsigned int write_buffer_len; int /*<<< orphan*/  write_buffer; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ WriteIndexInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(WriteIndexInfo *info, int fd)
{
    unsigned int buffered = info->write_buffer_len;
    if (buffered) {
        FUNC0(info->context, info->write_buffer, buffered);
        if (FUNC1(fd, info->write_buffer, buffered) != buffered)
            return -1;
        info->write_buffer_len = 0;
    }
    return 0;
}