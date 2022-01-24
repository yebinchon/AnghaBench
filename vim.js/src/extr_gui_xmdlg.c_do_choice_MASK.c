#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum ListSpecifier { ____Placeholder_ListSpecifier } ListSpecifier ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  XmString ;
struct TYPE_9__ {int /*<<< orphan*/  item; } ;
typedef  TYPE_1__ XmListCallbackStruct ;
typedef  scalar_t__ Widget ;
struct TYPE_10__ {char** sel; char* font_name; int num; int /*<<< orphan*/  name; int /*<<< orphan*/  sample; } ;
typedef  TYPE_2__ SharedFontSelData ;
typedef  int /*<<< orphan*/  Boolean ;
typedef  int /*<<< orphan*/  Arg ;

/* Variables and functions */
 size_t ENCODING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  False ; 
 size_t NAME ; 
 size_t SIZE ; 
 size_t STYLE ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  VIM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmNlabelString ; 
 int /*<<< orphan*/  XmSTRING_DEFAULT_CHARSET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_2__*) ; 
 char* FUNC14 (TYPE_2__*,int) ; 
 scalar_t__ FUNC15 (TYPE_2__*,size_t,int) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 char* wild ; 

__attribute__((used)) static Boolean
FUNC17(Widget w,
	SharedFontSelData *data,
	XmListCallbackStruct *call_data,
	enum ListSpecifier which)
{
    char *sel;

    FUNC3(call_data->item, XmSTRING_DEFAULT_CHARSET, &sel);

    if (!data->sel[which])
	data->sel[which] = FUNC6(sel);
    else
    {
	if (!FUNC16(data->sel[which], sel))
	{
	    /* unselecting current selection */
	    FUNC5(data->sel[which]);
	    data->sel[which] = NULL;
	    if (w)
		FUNC0(w, call_data->item);
	}
	else
	{
	    FUNC5(data->sel[which]);
	    data->sel[which] = FUNC6(sel);
	}
    }
    FUNC5(sel);

    FUNC13(which, data);

    /* If there is a font selection, we display it. */
    if (data->sel[ENCODING]
	    && data->sel[NAME]
	    && data->sel[STYLE]
	    && data->sel[SIZE]
	    && FUNC16(data->sel[ENCODING], wild)
	    && FUNC16(data->sel[NAME], wild)
	    && FUNC16(data->sel[STYLE], wild)
	    && FUNC16(data->sel[SIZE], wild))
    {
	int i;

	if (data->font_name)
	    FUNC5(data->font_name);
	data->font_name = NULL;

	for (i = 0; i < data->num; i++)
	{
	    if (FUNC15(data, ENCODING, i)
		    && FUNC15(data, NAME, i)
		    && FUNC15(data, STYLE, i)
		    && FUNC15(data, SIZE, i))
	    {
		data->font_name = FUNC6(FUNC14(data, i));
		break;
	    }
	}

	if (data->font_name)
	{
	    FUNC4(data->name, data->font_name);
	    FUNC11(data);
	}
	else
	    FUNC12(VIM_ERROR,
		    (char_u *)FUNC9("Error"),
		    (char_u *)FUNC9("Invalid font specification"),
		    (char_u *)FUNC9("&Dismiss"), 1, NULL, FALSE);

	return True;
    }
    else
    {
	int	    n;
	XmString    str;
	Arg	    args[4];
	char	    *nomatch_msg = FUNC9("no specific match");

	n = 0;
	str = FUNC1(nomatch_msg);
	FUNC7(args[n], XmNlabelString, str); ++n;
	FUNC8(data->sample, args, n);
	FUNC10(data->sample);
	FUNC4(data->name, nomatch_msg);
	FUNC2(str);

	return False;
    }
}