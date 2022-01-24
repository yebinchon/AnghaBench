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
typedef  int gsize ;
struct TYPE_3__ {unsigned int write_buffer_len; scalar_t__ write_buffer; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ WriteIndexInfo ;

/* Variables and functions */
 unsigned int WRITE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 unsigned int FUNC2 (int,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC3(WriteIndexInfo *info, int fd)
{
    unsigned int left = info->write_buffer_len;
    gsize len = 20;

    if (left) {
        info->write_buffer_len = 0;
        FUNC1(info->context, info->write_buffer, left);
    }

    /* Flush first if not enough space for SHA1 signature */
    if (left + 20 > WRITE_BUFFER_SIZE) {
        if (FUNC2(fd, info->write_buffer, left) != left)
            return -1;
        left = 0;
    }

    /* Append the SHA1 signature at the end */
    FUNC0 (info->context, info->write_buffer + left, &len);
    left += 20;
    return (FUNC2(fd, info->write_buffer, left) != left) ? -1 : 0;
}