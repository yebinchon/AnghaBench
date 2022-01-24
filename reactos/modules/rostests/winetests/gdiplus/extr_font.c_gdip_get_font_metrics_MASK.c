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
struct font_metrics {double font_size; int /*<<< orphan*/  descent; int /*<<< orphan*/  ascent; int /*<<< orphan*/  line_spacing; int /*<<< orphan*/  em_height; scalar_t__ lfHeight; int /*<<< orphan*/  font_height; } ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFont ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(GpFont *font, struct font_metrics *fm)
{
    INT style;
    GpFontFamily *family;
    GpStatus stat;

    stat = FUNC7(font, &style);
    FUNC9(Ok, stat);

    stat = FUNC5(NULL, NULL, &fm->font_height);
    FUNC9(InvalidParameter, stat);

    stat = FUNC5(font, NULL, NULL);
    FUNC9(InvalidParameter, stat);

    stat = FUNC5(font, NULL, &fm->font_height);
    FUNC9(Ok, stat);
    stat = FUNC6(font, &fm->font_size);
    FUNC9(Ok, stat);

    fm->lfHeight = (INT)(fm->font_size * -1.0);

    stat = FUNC4(font, &family);
    FUNC9(Ok, stat);

    stat = FUNC3(family, style, &fm->em_height);
    FUNC9(Ok, stat);
    stat = FUNC8(family, style, &fm->line_spacing);
    FUNC9(Ok, stat);
    stat = FUNC1(family, style, &fm->ascent);
    FUNC9(Ok, stat);
    stat = FUNC2(family, style, &fm->descent);
    FUNC9(Ok, stat);

    FUNC0(family);
}