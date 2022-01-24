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
typedef  enum ListSpecifier { ____Placeholder_ListSpecifier } ListSpecifier ;
typedef  int /*<<< orphan*/  XtPointer ;
typedef  int /*<<< orphan*/  XtCallbackProc ;
typedef  int /*<<< orphan*/  XmString ;
typedef  scalar_t__* WidgetList ;
typedef  scalar_t__ Widget ;
struct TYPE_5__ {int num; char** sel; scalar_t__* list; int /*<<< orphan*/  encoding_menu; int /*<<< orphan*/  encoding_pulldown; int /*<<< orphan*/  in_pixels; } ;
typedef  TYPE_1__ SharedFontSelData ;
typedef  scalar_t__ Cardinal ;

/* Variables and functions */
 int ENCODING ; 
 int /*<<< orphan*/  False ; 
 int MAX_ENTRIES_IN_LIST ; 
#define  NAME 130 
 int NONE ; 
#define  SIZE 129 
#define  STYLE 128 
 int TEMP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmNactivateCallback ; 
 int /*<<< orphan*/  XmNchildren ; 
 int /*<<< orphan*/  XmNlabelString ; 
 int /*<<< orphan*/  XmNmenuHistory ; 
 int /*<<< orphan*/  XmNnumChildren ; 
 int /*<<< orphan*/  XmNuserData ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__**,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC14 (char**,char*,int*) ; 
 scalar_t__ encoding_callback ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 scalar_t__ FUNC17 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 char* wild ; 
 int /*<<< orphan*/  xmPushButtonGadgetClass ; 

__attribute__((used)) static void
FUNC23(enum ListSpecifier fix, SharedFontSelData *data)
{
    char	*list[NONE][MAX_ENTRIES_IN_LIST];
    int		count[NONE];
    char	buf[TEMP_BUF_SIZE];
    XmString	items[MAX_ENTRIES_IN_LIST];
    int		i;
    int		idx;

    for (idx = (int)ENCODING; idx < (int)NONE; ++idx)
	count[idx] = 0;

    /* First we insert the wild char into every single list. */
    if (fix != ENCODING)
	FUNC14(list[ENCODING], wild, &count[ENCODING]);
    if (fix != NAME)
	FUNC14(list[NAME], wild, &count[NAME]);
    if (fix != STYLE)
	FUNC14(list[STYLE], wild, &count[STYLE]);
    if (fix != SIZE)
	FUNC14(list[SIZE], wild, &count[SIZE]);

    for (i = 0; i < data->num && i < MAX_ENTRIES_IN_LIST; i++)
    {
	if (FUNC19(FUNC16(data, i)))
	    continue;

	if (fix != ENCODING
		&& FUNC17(data, NAME, i)
		&& FUNC17(data, STYLE, i)
		&& FUNC17(data, SIZE, i))
	{
	    FUNC15(FUNC16(data, i), buf);
	    FUNC14(list[ENCODING], buf, &count[ENCODING]);
	}

	if (fix != NAME
		&& FUNC17(data, ENCODING, i)
		&& FUNC17(data, STYLE, i)
		&& FUNC17(data, SIZE, i))
	{
	    FUNC18(FUNC16(data, i), buf);
	    FUNC14(list[NAME], buf, &count[NAME]);
	}

	if (fix != STYLE
		&& FUNC17(data, ENCODING, i)
		&& FUNC17(data, NAME, i)
		&& FUNC17(data, SIZE, i))
	{
	    FUNC22(FUNC16(data, i), buf);
	    FUNC14(list[STYLE], buf, &count[STYLE]);
	}

	if (fix != SIZE
		&& FUNC17(data, ENCODING, i)
		&& FUNC17(data, NAME, i)
		&& FUNC17(data, STYLE, i))
	{
	    FUNC20(FUNC16(data, i), buf, data->in_pixels);
	    FUNC14(list[SIZE], buf, &count[SIZE]);
	}
    }

    /*
     * And now do the preselection in all lists where there was one:
     */

    if (fix != ENCODING)
    {
	Cardinal n_items;
	WidgetList children;
	Widget selected_button = 0;

	/* Get and update the current button list.  */
	FUNC12(data->encoding_pulldown,
		XmNchildren, &children,
		XmNnumChildren, &n_items,
		NULL);

	for (i = 0; i < count[ENCODING]; ++i)
	{
	    Widget button;

	    items[i] = FUNC4(list[ENCODING][i]);

	    if (i < (int)n_items)
	    {
		/* recycle old button */
		FUNC13(children[i],
			XmNlabelString, items[i],
			&XmNuserData, i,
			NULL);
		button = children[i];
	    }
	    else
	    {
		/* create a new button */
		button = FUNC11("button",
			xmPushButtonGadgetClass,
			data->encoding_pulldown,
			XmNlabelString, items[i],
			XmNuserData, i,
			NULL);
		FUNC6(button, XmNactivateCallback,
			(XtCallbackProc) encoding_callback, (XtPointer) data);
		FUNC9(button);
	    }

	    if (data->sel[ENCODING])
	    {
		if (!FUNC21(data->sel[ENCODING], list[ENCODING][i]))
		    selected_button = button;
	    }
	    FUNC8(list[ENCODING][i]);
	}

	/* Destroy all the outstanding menu items.
	 */
	for (i = count[ENCODING]; i < (int)n_items; ++i)
	{
	    FUNC10(children[i]);
	    FUNC7(children[i]);
	}

	/* Preserve the current selection visually.
	 */
	if (selected_button)
	{
	    FUNC13(data->encoding_menu,
		    XmNmenuHistory, selected_button,
		    NULL);
	}

	for (i = 0; i < count[ENCODING]; ++i)
	    FUNC5(items[i]);
    }

    /*
     * Now loop trough the remaining lists and set them up.
     */
    for (idx = (int)NAME; idx < (int)NONE; ++idx)
    {
	Widget w;

	if (fix == (enum ListSpecifier)idx)
	    continue;

	switch ((enum ListSpecifier)idx)
	{
	    case NAME:
		w = data->list[NAME];
		break;
	    case STYLE:
		w = data->list[STYLE];
		break;
	    case SIZE:
		w = data->list[SIZE];
		break;
	    default:
		w = (Widget)0;	/* for lint */
	}

	for (i = 0; i < count[idx]; ++i)
	{
	    items[i] = FUNC4(list[idx][i]);
	    FUNC8(list[idx][i]);
	}
	FUNC1(w);
	FUNC0(w, items, count[idx], 1);
	if (data->sel[idx])
	{
	    FUNC5(items[0]);
	    items[0] = FUNC4(data->sel[idx]);
	    FUNC2(w, items[0], False);
	    FUNC3(w, items[0]);
	}
	for (i = 0; i < count[idx]; ++i)
	    FUNC5(items[i]);
    }
}