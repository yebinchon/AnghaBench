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
struct async_iorequest {struct async_iorequest* next; struct async_iorequest* buffer; } ;
struct TYPE_3__ {struct async_iorequest* iorequest; } ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct async_iorequest*) ; 

struct async_iorequest *
FUNC1(RDPCLIENT * This, struct async_iorequest *prev, struct async_iorequest *iorq)
{
	if (!iorq)
		return NULL;

	if (iorq->buffer)
		FUNC0(iorq->buffer);
	if (prev)
	{
		prev->next = iorq->next;
		FUNC0(iorq);
		iorq = prev->next;
	}
	else
	{
		/* Even if NULL */
		This->iorequest = iorq->next;
		FUNC0(iorq);
		iorq = NULL;
	}
	return iorq;
}