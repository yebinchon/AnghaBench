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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Form_pg_proc ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(Form_pg_proc form, void *arg)
{
	Oid *argtype = arg;

	return FUNC0(form, *argtype);
}