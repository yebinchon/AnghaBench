#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

block_t *FUNC3(const char *path, bool write)
{
    /* NOTE: Writeable shared mappings are not supported here. So there are no
     * needs to open the file for writing (even if the mapping is writable). */
    int fd = FUNC2 (path, O_RDONLY);
    if (fd == -1)
        return NULL;

    block_t *block = FUNC0(fd, write);
    FUNC1 (fd);
    return block;
}