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
typedef  int /*<<< orphan*/  u16_t ;
typedef  int /*<<< orphan*/  err_t ;
typedef  int /*<<< orphan*/  PTCP_PCB ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/  const) ; 

__attribute__((used)) static
err_t
FUNC1(void *arg, PTCP_PCB pcb, const u16_t space)
{
    /* Make sure the socket didn't get closed */
    if (!arg) return ERR_OK;

    FUNC0(arg, space);

    return ERR_OK;
}