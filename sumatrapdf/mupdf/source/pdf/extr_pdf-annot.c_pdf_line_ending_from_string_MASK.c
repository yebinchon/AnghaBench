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
typedef  int /*<<< orphan*/  fz_context ;
typedef  enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;

/* Variables and functions */
 int PDF_ANNOT_LE_BUTT ; 
 int PDF_ANNOT_LE_CIRCLE ; 
 int PDF_ANNOT_LE_CLOSED_ARROW ; 
 int PDF_ANNOT_LE_DIAMOND ; 
 int PDF_ANNOT_LE_NONE ; 
 int PDF_ANNOT_LE_OPEN_ARROW ; 
 int PDF_ANNOT_LE_R_CLOSED_ARROW ; 
 int PDF_ANNOT_LE_R_OPEN_ARROW ; 
 int PDF_ANNOT_LE_SLASH ; 
 int PDF_ANNOT_LE_SQUARE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

enum pdf_line_ending FUNC1(fz_context *ctx, const char *end)
{
	if (!FUNC0(end, "None")) return PDF_ANNOT_LE_NONE;
	else if (!FUNC0(end, "Square")) return PDF_ANNOT_LE_SQUARE;
	else if (!FUNC0(end, "Circle")) return PDF_ANNOT_LE_CIRCLE;
	else if (!FUNC0(end, "Diamond")) return PDF_ANNOT_LE_DIAMOND;
	else if (!FUNC0(end, "OpenArrow")) return PDF_ANNOT_LE_OPEN_ARROW;
	else if (!FUNC0(end, "ClosedArrow")) return PDF_ANNOT_LE_CLOSED_ARROW;
	else if (!FUNC0(end, "Butt")) return PDF_ANNOT_LE_BUTT;
	else if (!FUNC0(end, "ROpenArrow")) return PDF_ANNOT_LE_R_OPEN_ARROW;
	else if (!FUNC0(end, "RClosedArrow")) return PDF_ANNOT_LE_R_CLOSED_ARROW;
	else if (!FUNC0(end, "Slash")) return PDF_ANNOT_LE_SLASH;
	else return PDF_ANNOT_LE_NONE;
}