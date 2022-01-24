#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int socklen_t ;
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ redisContext ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

int FUNC2(redisContext *c) {
    int err = 0, errno_saved = errno;
    socklen_t errlen = sizeof(err);

    if (FUNC1(c->fd, SOL_SOCKET, SO_ERROR, &err, &errlen) == -1) {
        FUNC0(c,REDIS_ERR_IO,"getsockopt(SO_ERROR)");
        return REDIS_ERR;
    }

    if (err == 0) {
        err = errno_saved;
    }

    if (err) {
        errno = err;
        FUNC0(c,REDIS_ERR_IO,NULL);
        return REDIS_ERR;
    }

    return REDIS_OK;
}