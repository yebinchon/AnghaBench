#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ len; } ;
struct imsg {TYPE_1__ hdr; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ IMSG_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC1(struct imsg *imsg)
{
	FUNC0(imsg->data, imsg->hdr.len - IMSG_HEADER_SIZE);
}