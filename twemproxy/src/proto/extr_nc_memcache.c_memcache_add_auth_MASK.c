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
struct context {int dummy; } ;
struct conn {int dummy; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 

rstatus_t
FUNC1(struct context *ctx, struct conn *c_conn, struct conn *s_conn)
{
    FUNC0();
    return NC_OK;
}