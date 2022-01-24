#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ToxAV ;
struct TYPE_2__ {int state; } ;
typedef  TYPE_1__ CallControl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void FUNC1(ToxAV *av, uint32_t friend_number, uint32_t state, void *user_data)
{
    (void) av;
    (void) friend_number;

    FUNC0("Handling CALL STATE callback: %d\n", state);
    ((CallControl *)user_data)->state = state;
}