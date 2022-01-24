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
typedef  int /*<<< orphan*/  fz_bidi_chartype ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_L ; 
 int /*<<< orphan*/  BDI_R ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_bidi_chartype FUNC1(fz_bidi_chartype level)
{
	return FUNC0(level) ? BDI_R : BDI_L;
}