#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  config_nv; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ zdb_label_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int* dump_opt ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(zdb_label_t *label, size_t buflen, int l)
{
	if (dump_opt['q'])
		return;

	if ((dump_opt['l'] < 3) && (FUNC2(label->config) != l))
		return;

	FUNC3(label, l);
	FUNC0(label->config_nv, 4);
	FUNC4("    labels = ", label->config);

	if (dump_opt['l'] >= 2)
		FUNC1(label->config_nv, buflen);
}