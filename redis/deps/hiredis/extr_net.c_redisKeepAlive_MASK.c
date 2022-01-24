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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  redisFD ;
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_OTHER ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_KEEPCNT ; 
 int /*<<< orphan*/  TCP_KEEPIDLE ; 
 int /*<<< orphan*/  TCP_KEEPINTVL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(redisContext *c, int interval) {
    int val = 1;
    redisFD fd = c->fd;

    if (FUNC1(fd, SOL_SOCKET, SO_KEEPALIVE, &val, sizeof(val)) == -1){
        FUNC0(c,REDIS_ERR_OTHER,FUNC2(errno));
        return REDIS_ERR;
    }

    val = interval;

#if defined(__APPLE__) && defined(__MACH__)
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPALIVE, &val, sizeof(val)) < 0) {
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }
#else
#if defined(__GLIBC__) && !defined(__FreeBSD_kernel__)
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPIDLE, &val, sizeof(val)) < 0) {
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }

    val = interval/3;
    if (val == 0) val = 1;
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPINTVL, &val, sizeof(val)) < 0) {
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }

    val = 3;
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPCNT, &val, sizeof(val)) < 0) {
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }
#endif
#endif

    return REDIS_OK;
}