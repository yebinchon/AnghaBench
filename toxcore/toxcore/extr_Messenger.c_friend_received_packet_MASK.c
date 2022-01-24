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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; int /*<<< orphan*/  fr_c; int /*<<< orphan*/  net_crypto; } ;
struct TYPE_5__ {int /*<<< orphan*/  friendcon_id; } ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*,size_t) ; 

__attribute__((used)) static int FUNC3(const Messenger *m, int32_t friendnumber, uint32_t number)
{
    if (FUNC2(m, friendnumber))
        return -1;

    return FUNC0(m->net_crypto, FUNC1(m->fr_c,
                                m->friendlist[friendnumber].friendcon_id), number);
}