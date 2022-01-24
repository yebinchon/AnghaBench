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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  Tox ;
typedef  scalar_t__ TOX_CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(Tox *tox, uint32_t friendnumber, TOX_CONNECTION status, void *userdata)
{
    if (status)
        FUNC0("\nOther went online.\n");
    else
        FUNC0("\nOther went offline.\n");
}