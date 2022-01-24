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
struct lexbuf {int /*<<< orphan*/  c; } ;

/* Variables and functions */
 int CSS_KEYWORD ; 
 int /*<<< orphan*/  FUNC0 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lexbuf *buf)
{
	while (FUNC2(buf->c))
	{
		FUNC1(buf, buf->c);
		FUNC0(buf);
	}
	FUNC1(buf, 0);
	return CSS_KEYWORD;
}