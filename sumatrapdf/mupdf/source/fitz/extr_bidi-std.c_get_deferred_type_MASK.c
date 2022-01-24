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
typedef  int fz_bidi_chartype ;
typedef  int fz_bidi_action ;

/* Variables and functions */

__attribute__((used)) static
fz_bidi_chartype FUNC0(fz_bidi_action action)
{
	return (action >> 4) & 0xF;
}