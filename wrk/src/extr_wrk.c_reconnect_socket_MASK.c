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
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ thread ;
struct TYPE_10__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ connection ;
struct TYPE_11__ {int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int AE_READABLE ; 
 int AE_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_4__ sock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(thread *thread, connection *c) {
    FUNC0(thread->loop, c->fd, AE_WRITABLE | AE_READABLE);
    sock.close(c);
    FUNC1(c->fd);
    return FUNC2(thread, c);
}