#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {void* lfStrikeOut; void* lfUnderline; int /*<<< orphan*/  lfWeight; } ;
typedef  TYPE_1__ LOGFONTW ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  void* BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static HFONT
FUNC3(HFONT OrgFont,
                  // COORD   FontSize,
                  ULONG   FontWeight,
                  // BOOLEAN bItalic,
                  BOOLEAN bUnderline,
                  BOOLEAN bStrikeOut)
{
    LOGFONTW lf;

    /* Initialize the LOGFONT structure */
    FUNC2(&lf, sizeof(lf));

    /* Retrieve the details of the current font */
    if (FUNC1(OrgFont, sizeof(lf), &lf) == 0)
        return NULL;

    /* Change the font attributes */
    // lf.lfHeight = FontSize.Y;
    // lf.lfWidth  = FontSize.X;
    lf.lfWeight = FontWeight;
    // lf.lfItalic = bItalic;
    lf.lfUnderline = bUnderline;
    lf.lfStrikeOut = bStrikeOut;

    /* Build a new font */
    return FUNC0(&lf);
}