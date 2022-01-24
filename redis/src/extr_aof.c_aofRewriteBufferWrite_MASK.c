#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_4__ {scalar_t__ used; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ aofrwblock ;
struct TYPE_5__ {int /*<<< orphan*/  aof_rewrite_buf_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ server ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,scalar_t__) ; 

ssize_t FUNC4(int fd) {
    listNode *ln;
    listIter li;
    ssize_t count = 0;

    FUNC2(server.aof_rewrite_buf_blocks,&li);
    while((ln = FUNC0(&li))) {
        aofrwblock *block = FUNC1(ln);
        ssize_t nwritten;

        if (block->used) {
            nwritten = FUNC3(fd,block->buf,block->used);
            if (nwritten != (ssize_t)block->used) {
                if (nwritten == 0) errno = EIO;
                return -1;
            }
            count += nwritten;
        }
    }
    return count;
}