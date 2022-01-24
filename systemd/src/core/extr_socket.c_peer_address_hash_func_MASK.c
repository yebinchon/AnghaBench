#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct siphash {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  svm_cid; } ;
struct TYPE_11__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_13__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_12__ {TYPE_2__ vm; TYPE_3__ sa; TYPE_1__ in6; TYPE_5__ in; } ;
struct TYPE_14__ {TYPE_4__ peer; } ;
typedef  TYPE_6__ SocketPeer ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_VSOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,struct siphash*) ; 

__attribute__((used)) static void FUNC3(const SocketPeer *s, struct siphash *state) {
        FUNC0(s);

        if (s->peer.sa.sa_family == AF_INET)
                FUNC2(&s->peer.in.sin_addr, sizeof(s->peer.in.sin_addr), state);
        else if (s->peer.sa.sa_family == AF_INET6)
                FUNC2(&s->peer.in6.sin6_addr, sizeof(s->peer.in6.sin6_addr), state);
        else if (s->peer.sa.sa_family == AF_VSOCK)
                FUNC2(&s->peer.vm.svm_cid, sizeof(s->peer.vm.svm_cid), state);
        else
                FUNC1("Unknown address family.");
}