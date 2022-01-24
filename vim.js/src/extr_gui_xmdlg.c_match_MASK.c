#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum ListSpecifier { ____Placeholder_ListSpecifier } ListSpecifier ;
struct TYPE_4__ {char** sel; int /*<<< orphan*/  in_pixels; } ;
typedef  TYPE_1__ SharedFontSelData ;
typedef  int Boolean ;

/* Variables and functions */
#define  ENCODING 131 
#define  NAME 130 
#define  SIZE 129 
#define  STYLE 128 
 int TEMP_BUF_SIZE ; 
 int True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* wild ; 

__attribute__((used)) static Boolean
FUNC6(SharedFontSelData *data, enum ListSpecifier l, int i)
{
    char buf[TEMP_BUF_SIZE];

    /* An empty selection or a wild card matches anything.
     */
    if (!data->sel[l] || !FUNC4(data->sel[l], wild))
	return True;

    /* chunk out the desired part... */
    switch (l)
    {
	case ENCODING:
	    FUNC0(FUNC1(data, i), buf);
	    break;

	case NAME:
	    FUNC2(FUNC1(data, i), buf);
	    break;

	case STYLE:
	    FUNC5(FUNC1(data, i), buf);
	    break;

	case SIZE:
	    FUNC3(FUNC1(data, i), buf, data->in_pixels);
	    break;
	default:
	    ;
    }

    /* ...and chew it now */

    return !FUNC4(buf, data->sel[l]);
}