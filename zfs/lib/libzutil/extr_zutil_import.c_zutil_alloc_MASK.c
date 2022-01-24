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
typedef  int /*<<< orphan*/  libpc_handle_t ;

/* Variables and functions */
 void* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void *
FUNC2(libpc_handle_t *hdl, size_t size)
{
	void *data;

	if ((data = FUNC0(1, size)) == NULL)
		(void) FUNC1(hdl);

	return (data);
}