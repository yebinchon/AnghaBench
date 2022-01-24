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
struct sec_TCP_con {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sec_TCP_con*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct sec_TCP_con *con)
{
    FUNC1(con->sock);
    FUNC0(con);
}