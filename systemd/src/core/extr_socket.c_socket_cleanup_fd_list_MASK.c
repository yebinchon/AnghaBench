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
struct TYPE_4__ {scalar_t__ n_auxiliary_fds; int /*<<< orphan*/  auxiliary_fds; } ;
typedef  TYPE_1__ SocketPort ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SocketPort *p) {
        FUNC0(p);

        FUNC1(p->auxiliary_fds, p->n_auxiliary_fds);
        p->auxiliary_fds = FUNC2(p->auxiliary_fds);
        p->n_auxiliary_fds = 0;
}