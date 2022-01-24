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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;

/* Variables and functions */
 int /*<<< orphan*/  Butt ; 
 int /*<<< orphan*/  Circle ; 
 int /*<<< orphan*/  ClosedArrow ; 
 int /*<<< orphan*/  Diamond ; 
 int /*<<< orphan*/  None ; 
 int /*<<< orphan*/  OpenArrow ; 
#define  PDF_ANNOT_LE_BUTT 137 
#define  PDF_ANNOT_LE_CIRCLE 136 
#define  PDF_ANNOT_LE_CLOSED_ARROW 135 
#define  PDF_ANNOT_LE_DIAMOND 134 
#define  PDF_ANNOT_LE_NONE 133 
#define  PDF_ANNOT_LE_OPEN_ARROW 132 
#define  PDF_ANNOT_LE_R_CLOSED_ARROW 131 
#define  PDF_ANNOT_LE_R_OPEN_ARROW 130 
#define  PDF_ANNOT_LE_SLASH 129 
#define  PDF_ANNOT_LE_SQUARE 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RClosedArrow ; 
 int /*<<< orphan*/  ROpenArrow ; 
 int /*<<< orphan*/  Slash ; 
 int /*<<< orphan*/  Square ; 

pdf_obj *FUNC1(fz_context *ctx, enum pdf_line_ending end)
{
	switch (end)
	{
	default:
	case PDF_ANNOT_LE_NONE: return FUNC0(None);
	case PDF_ANNOT_LE_SQUARE: return FUNC0(Square);
	case PDF_ANNOT_LE_CIRCLE: return FUNC0(Circle);
	case PDF_ANNOT_LE_DIAMOND: return FUNC0(Diamond);
	case PDF_ANNOT_LE_OPEN_ARROW: return FUNC0(OpenArrow);
	case PDF_ANNOT_LE_CLOSED_ARROW: return FUNC0(ClosedArrow);
	case PDF_ANNOT_LE_BUTT: return FUNC0(Butt);
	case PDF_ANNOT_LE_R_OPEN_ARROW: return FUNC0(ROpenArrow);
	case PDF_ANNOT_LE_R_CLOSED_ARROW: return FUNC0(RClosedArrow);
	case PDF_ANNOT_LE_SLASH: return FUNC0(Slash);
	}
}