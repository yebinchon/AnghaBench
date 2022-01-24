#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int send_info_set; int /*<<< orphan*/  send_flinfo; int /*<<< orphan*/  type_out; int /*<<< orphan*/  type_send; scalar_t__ use_binary_send; } ;
typedef  TYPE_1__ DatumSerializer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(DatumSerializer *ser)
{
	if (ser->send_info_set)
		return;

	ser->send_info_set = true;

	if (ser->use_binary_send)
		FUNC0(ser->type_send, &ser->send_flinfo);
	else
		FUNC0(ser->type_out, &ser->send_flinfo);
}