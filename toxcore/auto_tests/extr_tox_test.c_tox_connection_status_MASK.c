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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Tox ;
typedef  scalar_t__ TOX_CONNECTION ;

/* Variables and functions */
 scalar_t__ TOX_CONNECTION_UDP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ connected_t1 ; 

void FUNC2(Tox *tox, TOX_CONNECTION connection_status, void *user_data)
{
    if (*((uint32_t *)user_data) != 974536)
        return;

    if (connected_t1 && !connection_status)
        FUNC0("Tox went offline");

    FUNC1(connection_status == TOX_CONNECTION_UDP, "wrong status %u", connection_status);

    connected_t1 = connection_status;
}