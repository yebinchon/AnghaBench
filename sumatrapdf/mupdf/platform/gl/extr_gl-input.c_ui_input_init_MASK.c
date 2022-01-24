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
struct input {scalar_t__ scroll; scalar_t__ end; scalar_t__ q; scalar_t__ text; scalar_t__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

void FUNC2(struct input *input, const char *text)
{
	FUNC0(input->text, text, sizeof input->text);
	input->end = input->text + FUNC1(input->text);
	input->p = input->text;
	input->q = input->end;
	input->scroll = 0;
}