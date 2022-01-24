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

/* Variables and functions */
 int PDF_ANNOT_3D ; 
 int PDF_ANNOT_CARET ; 
 int PDF_ANNOT_CIRCLE ; 
 int PDF_ANNOT_FILE_ATTACHMENT ; 
 int PDF_ANNOT_FREE_TEXT ; 
 int PDF_ANNOT_HIGHLIGHT ; 
 int PDF_ANNOT_INK ; 
 int PDF_ANNOT_LINE ; 
 int PDF_ANNOT_LINK ; 
 int PDF_ANNOT_MOVIE ; 
 int PDF_ANNOT_POLYGON ; 
 int PDF_ANNOT_POLY_LINE ; 
 int PDF_ANNOT_POPUP ; 
 int PDF_ANNOT_PRINTER_MARK ; 
 int PDF_ANNOT_REDACT ; 
 int PDF_ANNOT_SCREEN ; 
 int PDF_ANNOT_SOUND ; 
 int PDF_ANNOT_SQUARE ; 
 int PDF_ANNOT_SQUIGGLY ; 
 int PDF_ANNOT_STAMP ; 
 int PDF_ANNOT_STRIKE_OUT ; 
 int PDF_ANNOT_TEXT ; 
 int PDF_ANNOT_TRAP_NET ; 
 int PDF_ANNOT_UNDERLINE ; 
 int PDF_ANNOT_UNKNOWN ; 
 int PDF_ANNOT_WATERMARK ; 
 int PDF_ANNOT_WIDGET ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

int
FUNC1(fz_context *ctx, const char *subtype)
{
	if (!FUNC0("Text", subtype)) return PDF_ANNOT_TEXT;
	if (!FUNC0("Link", subtype)) return PDF_ANNOT_LINK;
	if (!FUNC0("FreeText", subtype)) return PDF_ANNOT_FREE_TEXT;
	if (!FUNC0("Line", subtype)) return PDF_ANNOT_LINE;
	if (!FUNC0("Square", subtype)) return PDF_ANNOT_SQUARE;
	if (!FUNC0("Circle", subtype)) return PDF_ANNOT_CIRCLE;
	if (!FUNC0("Polygon", subtype)) return PDF_ANNOT_POLYGON;
	if (!FUNC0("PolyLine", subtype)) return PDF_ANNOT_POLY_LINE;
	if (!FUNC0("Highlight", subtype)) return PDF_ANNOT_HIGHLIGHT;
	if (!FUNC0("Underline", subtype)) return PDF_ANNOT_UNDERLINE;
	if (!FUNC0("Squiggly", subtype)) return PDF_ANNOT_SQUIGGLY;
	if (!FUNC0("StrikeOut", subtype)) return PDF_ANNOT_STRIKE_OUT;
	if (!FUNC0("Redact", subtype)) return PDF_ANNOT_REDACT;
	if (!FUNC0("Stamp", subtype)) return PDF_ANNOT_STAMP;
	if (!FUNC0("Caret", subtype)) return PDF_ANNOT_CARET;
	if (!FUNC0("Ink", subtype)) return PDF_ANNOT_INK;
	if (!FUNC0("Popup", subtype)) return PDF_ANNOT_POPUP;
	if (!FUNC0("FileAttachment", subtype)) return PDF_ANNOT_FILE_ATTACHMENT;
	if (!FUNC0("Sound", subtype)) return PDF_ANNOT_SOUND;
	if (!FUNC0("Movie", subtype)) return PDF_ANNOT_MOVIE;
	if (!FUNC0("Widget", subtype)) return PDF_ANNOT_WIDGET;
	if (!FUNC0("Screen", subtype)) return PDF_ANNOT_SCREEN;
	if (!FUNC0("PrinterMark", subtype)) return PDF_ANNOT_PRINTER_MARK;
	if (!FUNC0("TrapNet", subtype)) return PDF_ANNOT_TRAP_NET;
	if (!FUNC0("Watermark", subtype)) return PDF_ANNOT_WATERMARK;
	if (!FUNC0("3D", subtype)) return PDF_ANNOT_3D;
	return PDF_ANNOT_UNKNOWN;
}