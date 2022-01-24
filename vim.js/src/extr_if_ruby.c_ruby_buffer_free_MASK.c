#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ b_ruby_ref; } ;
typedef  TYPE_1__ buf_T ;
typedef  int /*<<< orphan*/  VALUE ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  Qnil ; 
 TYPE_3__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  objtbl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(buf_T *buf)
{
    if (buf->b_ruby_ref)
    {
	FUNC1(objtbl, FUNC2((VALUE) buf->b_ruby_ref), Qnil);
	FUNC0(buf->b_ruby_ref)->data = NULL;
    }
}