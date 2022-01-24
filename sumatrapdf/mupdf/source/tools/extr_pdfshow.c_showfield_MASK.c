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

/* Variables and functions */
 int /*<<< orphan*/  Btn ; 
 int /*<<< orphan*/  Ch ; 
 int /*<<< orphan*/  FT ; 
 int /*<<< orphan*/  Kids ; 
 int PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF ; 
 int PDF_BTN_FIELD_IS_PUSHBUTTON ; 
 int PDF_BTN_FIELD_IS_RADIO ; 
 int PDF_BTN_FIELD_IS_RADIOS_IN_UNISON ; 
 int PDF_CH_FIELD_IS_COMBO ; 
 int PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE ; 
 int PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK ; 
 int PDF_CH_FIELD_IS_EDIT ; 
 int PDF_CH_FIELD_IS_MULTI_SELECT ; 
 int PDF_CH_FIELD_IS_SORT ; 
 int PDF_FIELD_IS_NO_EXPORT ; 
 int PDF_FIELD_IS_READ_ONLY ; 
 int PDF_FIELD_IS_REQUIRED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int PDF_TX_FIELD_IS_COMB ; 
 int PDF_TX_FIELD_IS_DO_NOT_SCROLL ; 
 int PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK ; 
 int PDF_TX_FIELD_IS_FILE_SELECT ; 
 int PDF_TX_FIELD_IS_MULTILINE ; 
 int PDF_TX_FIELD_IS_PASSWORD ; 
 int PDF_TX_FIELD_IS_RICH_TEXT ; 
 int /*<<< orphan*/  Parent ; 
 int /*<<< orphan*/  TU ; 
 int /*<<< orphan*/  Tx ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char const* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char const* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC14(pdf_obj *field)
{
	pdf_obj *kids, *ft, *parent;
	const char *tu;
	char *t;
	int ff;
	int i, n;

	t = FUNC10(ctx, field);
	tu = FUNC7(ctx, field, FUNC0(TU));
	ft = FUNC6(ctx, field, FUNC0(FT));
	ff = FUNC9(ctx, field);
	parent = FUNC5(ctx, field, FUNC0(Parent));

	FUNC1(ctx, out, "field %d\n", FUNC12(ctx, field));
	FUNC1(ctx, out, "    Type: %s\n", FUNC11(ctx, ft));
	if (ff)
	{
		FUNC1(ctx, out, "    Flags:");
		if (ff & PDF_FIELD_IS_READ_ONLY) FUNC2(ctx, out, " readonly");
		if (ff & PDF_FIELD_IS_REQUIRED) FUNC2(ctx, out, " required");
		if (ff & PDF_FIELD_IS_NO_EXPORT) FUNC2(ctx, out, " noExport");
		if (ft == FUNC0(Btn))
		{
			if (ff & PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF) FUNC2(ctx, out, " noToggleToOff");
			if (ff & PDF_BTN_FIELD_IS_RADIO) FUNC2(ctx, out, " radio");
			if (ff & PDF_BTN_FIELD_IS_PUSHBUTTON) FUNC2(ctx, out, " pushButton");
			if (ff & PDF_BTN_FIELD_IS_RADIOS_IN_UNISON) FUNC2(ctx, out, " radiosInUnison");
		}
		if (ft == FUNC0(Tx))
		{
			if (ff & PDF_TX_FIELD_IS_MULTILINE) FUNC2(ctx, out, " multiline");
			if (ff & PDF_TX_FIELD_IS_PASSWORD) FUNC2(ctx, out, " password");
			if (ff & PDF_TX_FIELD_IS_FILE_SELECT) FUNC2(ctx, out, " fileSelect");
			if (ff & PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK) FUNC2(ctx, out, " dontSpellCheck");
			if (ff & PDF_TX_FIELD_IS_DO_NOT_SCROLL) FUNC2(ctx, out, " dontScroll");
			if (ff & PDF_TX_FIELD_IS_COMB) FUNC2(ctx, out, " comb");
			if (ff & PDF_TX_FIELD_IS_RICH_TEXT) FUNC2(ctx, out, " richText");
		}
		if (ft == FUNC0(Ch))
		{
			if (ff & PDF_CH_FIELD_IS_COMBO) FUNC2(ctx, out, " combo");
			if (ff & PDF_CH_FIELD_IS_EDIT) FUNC2(ctx, out, " edit");
			if (ff & PDF_CH_FIELD_IS_SORT) FUNC2(ctx, out, " sort");
			if (ff & PDF_CH_FIELD_IS_MULTI_SELECT) FUNC2(ctx, out, " multiSelect");
			if (ff & PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK) FUNC2(ctx, out, " dontSpellCheck");
			if (ff & PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE) FUNC2(ctx, out, " commitOnSelChange");
		}
		FUNC2(ctx, out, "\n");
	}
	FUNC1(ctx, out, "    Name: %(\n", t);
	if (*tu)
		FUNC1(ctx, out, "    Label: %q\n", tu);
	if (parent)
		FUNC1(ctx, out, "    Parent: %d\n", FUNC12(ctx, parent));

	FUNC13(FUNC8(ctx, field, "A"), "Action");

	FUNC13(FUNC8(ctx, field, "AA/K"), "Keystroke");
	FUNC13(FUNC8(ctx, field, "AA/V"), "Validate");
	FUNC13(FUNC8(ctx, field, "AA/F"), "Format");
	FUNC13(FUNC8(ctx, field, "AA/C"), "Calculate");

	FUNC13(FUNC8(ctx, field, "AA/E"), "Enter");
	FUNC13(FUNC8(ctx, field, "AA/X"), "Exit");
	FUNC13(FUNC8(ctx, field, "AA/D"), "Down");
	FUNC13(FUNC8(ctx, field, "AA/U"), "Up");
	FUNC13(FUNC8(ctx, field, "AA/Fo"), "Focus");
	FUNC13(FUNC8(ctx, field, "AA/Bl"), "Blur");

	FUNC2(ctx, out, "\n");

	kids = FUNC5(ctx, field, FUNC0(Kids));
	n = FUNC4(ctx, kids);
	for (i = 0; i < n; ++i)
		FUNC14(FUNC3(ctx, kids, i));
}