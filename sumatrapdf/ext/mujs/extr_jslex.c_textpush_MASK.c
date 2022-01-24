#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int len; int cap; int text; } ;
struct TYPE_6__ {TYPE_1__ lexbuf; } ;
typedef  TYPE_2__ js_State ;
typedef  int /*<<< orphan*/  Rune ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(js_State *J, Rune c)
{
	int n = FUNC1(c);
	if (J->lexbuf.len + n > J->lexbuf.cap) {
		J->lexbuf.cap = J->lexbuf.cap * 2;
		J->lexbuf.text = FUNC0(J, J->lexbuf.text, J->lexbuf.cap);
	}
	J->lexbuf.len += FUNC2(J->lexbuf.text + J->lexbuf.len, &c);
}