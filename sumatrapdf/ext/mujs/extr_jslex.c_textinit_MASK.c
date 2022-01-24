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
struct TYPE_5__ {int cap; scalar_t__ len; scalar_t__ text; } ;
struct TYPE_6__ {TYPE_1__ lexbuf; } ;
typedef  TYPE_2__ js_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC1(js_State *J)
{
	if (!J->lexbuf.text) {
		J->lexbuf.cap = 4096;
		J->lexbuf.text = FUNC0(J, J->lexbuf.cap);
	}
	J->lexbuf.len = 0;
}