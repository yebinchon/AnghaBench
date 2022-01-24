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
struct lexbuf {int /*<<< orphan*/  lookahead; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef  TYPE_1__ fz_css_condition ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_condition *FUNC2(struct lexbuf *buf)
{
	fz_css_condition *head, *tail;

	head = tail = FUNC1(buf);
	while (FUNC0(buf->lookahead))
	{
		tail = tail->next = FUNC1(buf);
	}
	return head;
}