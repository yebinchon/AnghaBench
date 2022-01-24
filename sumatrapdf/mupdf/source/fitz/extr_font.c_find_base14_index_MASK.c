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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *name)
{
	if (!FUNC0(name, "Courier")) return 0;
	if (!FUNC0(name, "Courier-Oblique")) return 1;
	if (!FUNC0(name, "Courier-Bold")) return 2;
	if (!FUNC0(name, "Courier-BoldOblique")) return 3;
	if (!FUNC0(name, "Helvetica")) return 4;
	if (!FUNC0(name, "Helvetica-Oblique")) return 5;
	if (!FUNC0(name, "Helvetica-Bold")) return 6;
	if (!FUNC0(name, "Helvetica-BoldOblique")) return 7;
	if (!FUNC0(name, "Times-Roman")) return 8;
	if (!FUNC0(name, "Times-Italic")) return 9;
	if (!FUNC0(name, "Times-Bold")) return 10;
	if (!FUNC0(name, "Times-BoldItalic")) return 11;
	if (!FUNC0(name, "Symbol")) return 12;
	if (!FUNC0(name, "ZapfDingbats")) return 13;
	return -1;
}