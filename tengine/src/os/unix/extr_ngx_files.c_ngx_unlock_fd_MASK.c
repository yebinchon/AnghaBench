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
struct flock {int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;
typedef  int /*<<< orphan*/  ngx_fd_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (struct flock*,int) ; 

ngx_err_t
FUNC2(ngx_fd_t fd)
{
    struct flock  fl;

    FUNC1(&fl, sizeof(struct flock));
    fl.l_type = F_UNLCK;
    fl.l_whence = SEEK_SET;

    if (FUNC0(fd, F_SETLK, &fl) == -1) {
        return  ngx_errno;
    }

    return 0;
}