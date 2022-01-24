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
struct TYPE_6__ {int /*<<< orphan*/ * ft_face; TYPE_1__* buffer; } ;
typedef  TYPE_2__ fz_font ;
struct TYPE_5__ {int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

int
FUNC3(fz_font *font)
{
	if (font->ft_face == NULL || font->buffer == NULL || font->buffer->len < 4)
		return 0;
	if (FUNC2(font))
		return 0;
	if (FUNC1(font->ft_face))
		return 1;
	if (FUNC0(font->ft_face))
		return 1;
	return 0;
}