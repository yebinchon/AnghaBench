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
typedef  int /*<<< orphan*/  Friend_Requests ;
typedef  int /*<<< orphan*/  Friend_Connections ;

/* Variables and functions */
 int /*<<< orphan*/  friendreq_handlepacket ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(Friend_Requests *fr, Friend_Connections *fr_c)
{
    FUNC0(fr_c, &friendreq_handlepacket, fr);
}