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
struct key_table {int /*<<< orphan*/  key_bindings; } ;
struct key_binding {int dummy; } ;

/* Variables and functions */
 struct key_binding* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_bindings ; 

struct key_binding *
FUNC1(struct key_table *table)
{
	return (FUNC0(key_bindings, &table->key_bindings));
}