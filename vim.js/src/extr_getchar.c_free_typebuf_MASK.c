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
struct TYPE_2__ {scalar_t__ tb_buf; scalar_t__ tb_noremap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_intern2 ; 
 scalar_t__ noremapbuf_init ; 
 TYPE_1__ typebuf ; 
 scalar_t__ typebuf_init ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3()
{
    if (typebuf.tb_buf == typebuf_init)
	FUNC0(FUNC1(e_intern2), "Free typebuf 1");
    else
	FUNC2(typebuf.tb_buf);
    if (typebuf.tb_noremap == noremapbuf_init)
	FUNC0(FUNC1(e_intern2), "Free typebuf 2");
    else
	FUNC2(typebuf.tb_noremap);
}