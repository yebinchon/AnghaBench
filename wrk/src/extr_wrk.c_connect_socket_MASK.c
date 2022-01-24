#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  connect; } ;
struct TYPE_10__ {TYPE_2__ errors; struct aeEventLoop* loop; struct addrinfo* addr; } ;
typedef  TYPE_3__ thread ;
struct aeEventLoop {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  flags ;
struct TYPE_8__ {TYPE_4__* data; } ;
struct TYPE_11__ {int fd; TYPE_1__ parser; } ;
typedef  TYPE_4__ connection ;

/* Variables and functions */
 scalar_t__ AE_OK ; 
 int AE_READABLE ; 
 int AE_WRITABLE ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 scalar_t__ FUNC0 (struct aeEventLoop*,int,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_connected ; 

__attribute__((used)) static int FUNC6(thread *thread, connection *c) {
    struct addrinfo *addr = thread->addr;
    struct aeEventLoop *loop = thread->loop;
    int fd, flags;

    fd = FUNC5(addr->ai_family, addr->ai_socktype, addr->ai_protocol);

    flags = FUNC3(fd, F_GETFL, 0);
    FUNC3(fd, F_SETFL, flags | O_NONBLOCK);

    if (FUNC2(fd, addr->ai_addr, addr->ai_addrlen) == -1) {
        if (errno != EINPROGRESS) goto error;
    }

    flags = 1;
    FUNC4(fd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof(flags));

    flags = AE_READABLE | AE_WRITABLE;
    if (FUNC0(loop, fd, flags, socket_connected, c) == AE_OK) {
        c->parser.data = c;
        c->fd = fd;
        return fd;
    }

  error:
    thread->errors.connect++;
    FUNC1(fd);
    return -1;
}