#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int flags; int style; scalar_t__ hwndListBox; scalar_t__ x_offset; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int INT ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int EF_MODIFIED ; 
 int EF_UPDATE ; 
 int /*<<< orphan*/  EN_CHANGE ; 
 int /*<<< orphan*/  EN_UPDATE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * empty_stringW ; 

__attribute__((used)) static void FUNC13(EDITSTATE *es, LPCWSTR text, BOOL unicode)
{
    LPWSTR textW = NULL;
    if (!unicode && text)
    {
	LPCSTR textA = (LPCSTR)text;
	INT countW = FUNC10(CP_ACP, 0, textA, -1, NULL, 0);
        textW = FUNC8(FUNC7(), 0, countW * sizeof(WCHAR));
	if (textW)
	    FUNC10(CP_ACP, 0, textA, -1, textW, countW);
	text = textW;
    }

    if (es->flags & EF_UPDATE)
	/* fixed this bug once; complain if we see it about to happen again. */
	FUNC6("SetSel may generate UPDATE message whose handler may reset "
	    "selection.\n");

    FUNC2(es, 0, (UINT)-1, FALSE);
    if (text) 
    {
	FUNC11("%s\n", FUNC12(text));
	FUNC0(es, FALSE, text, FALSE, FALSE);
	if(!unicode)
	    FUNC9(FUNC7(), 0, textW);
    } 
    else 
    {
	FUNC11("<NULL>\n");
	FUNC0(es, FALSE, empty_stringW, FALSE, FALSE);
    }
    es->x_offset = 0;
    es->flags &= ~EF_MODIFIED;
    FUNC2(es, 0, 0, FALSE);

    /* Send the notification after the selection start and end have been set
     * edit control doesn't send notification on WM_SETTEXT
     * if it is multiline, or it is part of combobox
     */
    if( !((es->style & ES_MULTILINE) || es->hwndListBox))
    {
        FUNC4(es, EN_UPDATE);
        FUNC4(es, EN_CHANGE);
    }
    FUNC1(es);
    FUNC5(es);    
    FUNC3(es);
}