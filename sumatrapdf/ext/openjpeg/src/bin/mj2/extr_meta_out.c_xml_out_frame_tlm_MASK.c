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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */

void FUNC0(FILE*
                       xmlout)   /* opt, main header only.  May be multiple. */
{
    /* Compare j2k_read_tlm()... which doesn't retain anything! */
    /* Plan:  Since this is only called from main header, not tilepart, use global j2k_default_tcp rather than parameter */
    /* Main header indents are 10 spaces */
}