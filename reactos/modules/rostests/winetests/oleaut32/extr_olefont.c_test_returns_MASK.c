#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fontdesc ;
struct TYPE_4__ {int int64; } ;
struct TYPE_5__ {int cbSizeofstruct; void* fStrikethrough; void* fUnderline; void* fItalic; scalar_t__ sCharset; int /*<<< orphan*/  sWeight; TYPE_1__ cySize; int /*<<< orphan*/  lpstrName; } ;
typedef  int /*<<< orphan*/  IFont ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ FONTDESC ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_E_INVALIDPROPERTYVALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_POINTER ; 
 void* FALSE ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IFont ; 
 int /*<<< orphan*/  MSSansSerif_font ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void FUNC7(void)
{
    IFont *pFont;
    FONTDESC fontdesc;
    HRESULT hr;

    fontdesc.cbSizeofstruct = sizeof(fontdesc);
    fontdesc.lpstrName = MSSansSerif_font;
    fontdesc.cySize.int64 = 12 * 10000; /* 12 pt */
    fontdesc.sWeight = FW_NORMAL;
    fontdesc.sCharset = 0;
    fontdesc.fItalic = FALSE;
    fontdesc.fUnderline = FALSE;
    fontdesc.fStrikethrough = FALSE;

    hr = FUNC6(&fontdesc, &IID_IFont, (void **)&pFont);
    FUNC0(hr, S_OK);

    hr = FUNC5(pFont, NULL);
    FUNC0(hr, CTL_E_INVALIDPROPERTYVALUE);

    hr = FUNC3(pFont, NULL);
    FUNC0(hr, E_POINTER);

    hr = FUNC4(pFont, NULL);
    FUNC0(hr, E_POINTER);

    hr = FUNC2(pFont, NULL);
    FUNC0(hr, E_POINTER);

    FUNC1(pFont);
}