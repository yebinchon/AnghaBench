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
struct TYPE_5__ {int cbSizeofstruct; int /*<<< orphan*/  lpstrName; void* fStrikethrough; void* fUnderline; void* fItalic; scalar_t__ sCharset; int /*<<< orphan*/  sWeight; TYPE_1__ cySize; } ;
typedef  scalar_t__ SHORT ;
typedef  int /*<<< orphan*/  IFont ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ FONTDESC ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ ANSI_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IFont ; 
 scalar_t__ SYMBOL_CHARSET ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arial_font ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  marlett_font ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void)
{
    IFont *font;
    FONTDESC fontdesc;
    HRESULT hr;
    BSTR name;
    SHORT cs;

    /* Try to create a symbol only font (marlett) with charset
       set to ANSI.  This will result in another, ANSI, font
       being selected */
    fontdesc.cbSizeofstruct = sizeof(fontdesc);
    fontdesc.lpstrName = marlett_font;
    fontdesc.cySize.int64 = 12 * 10000; /* 12 pt */
    fontdesc.sWeight = FW_NORMAL;
    fontdesc.sCharset = ANSI_CHARSET;
    fontdesc.fItalic = FALSE;
    fontdesc.fUnderline = FALSE;
    fontdesc.fStrikethrough = FALSE;

    hr = FUNC9(&fontdesc, &IID_IFont, (void **)&font);
    FUNC0(hr, S_OK);

    hr = FUNC2(font, &cs);
    FUNC0(hr, S_OK);
    FUNC8(cs == ANSI_CHARSET, "got charset %d\n", cs);

    FUNC1(font);

    /* Now create an ANSI font and change the name to marlett */

    fontdesc.lpstrName = arial_font;

    hr = FUNC9(&fontdesc, &IID_IFont, (void **)&font);
    FUNC0(hr, S_OK);

    hr = FUNC2(font, &cs);
    FUNC0(hr, S_OK);
    FUNC8(cs == ANSI_CHARSET, "got charset %d\n", cs);

    name = FUNC5(marlett_font);
    hr = FUNC4(font, name);
    FUNC0(hr, S_OK);
    FUNC6(name);

    hr = FUNC3(font, &name);
    FUNC0(hr, S_OK);
    FUNC8(!FUNC7(name, marlett_font), "got name %s\n", FUNC10(name));
    FUNC6(name);

    hr = FUNC2(font, &cs);
    FUNC0(hr, S_OK);
    FUNC8(cs == SYMBOL_CHARSET, "got charset %d\n", cs);

    FUNC1(font);
}