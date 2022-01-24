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
struct lexbuf {char lookahead; int /*<<< orphan*/  pool; int /*<<< orphan*/  ctx; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef  TYPE_1__ fz_css_value ;

/* Variables and functions */
 char EOF ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char*) ; 
 void* FUNC2 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_value *FUNC4(struct lexbuf *buf)
{
	fz_css_value *head, *tail;

	head = tail = FUNC2(buf);

	while (buf->lookahead != '}' && buf->lookahead != ';' && buf->lookahead != '!' &&
			buf->lookahead != ')' && buf->lookahead != EOF)
	{
		if (FUNC0(buf, ','))
		{
			FUNC3(buf);
			tail = tail->next = FUNC1(buf->ctx, buf->pool, ',', ",");
			tail = tail->next = FUNC2(buf);
		}
		else if (FUNC0(buf, '/'))
		{
			FUNC3(buf);
			tail = tail->next = FUNC1(buf->ctx, buf->pool, '/', "/");
			tail = tail->next = FUNC2(buf);
		}
		else
		{
			tail = tail->next = FUNC2(buf);
		}
	}

	return head;
}