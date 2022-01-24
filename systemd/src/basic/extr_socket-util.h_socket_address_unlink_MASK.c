#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  un; } ;
struct TYPE_6__ {TYPE_1__ sockaddr; } ;
typedef  TYPE_2__ SocketAddress ;

/* Variables and functions */
 scalar_t__ AF_UNIX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 

__attribute__((used)) static inline int FUNC2(const SocketAddress *a) {
        return FUNC1(a) == AF_UNIX ? FUNC0(&a->sockaddr.un) : 0;
}