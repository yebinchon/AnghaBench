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
typedef  int const LONG ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int DWORD ;

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 
#define  BS_3STATE 142 
#define  BS_AUTO3STATE 141 
#define  BS_AUTOCHECKBOX 140 
#define  BS_AUTORADIOBUTTON 139 
#define  BS_CHECKBOX 138 
#define  BS_COMMANDLINK 137 
#define  BS_DEFCOMMANDLINK 136 
#define  BS_DEFPUSHBUTTON 135 
#define  BS_DEFSPLITBUTTON 134 
#define  BS_GROUPBOX 133 
 int const BS_NOTIFY ; 
#define  BS_OWNERDRAW 132 
#define  BS_PUSHBUTTON 131 
#define  BS_RADIOBUTTON 130 
#define  BS_SPLITBUTTON 129 
#define  BS_USERBUTTON 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int const WS_CHILD ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/ * FUNC4 (int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const DWORD styles[] =
    {
        BS_PUSHBUTTON,
        BS_DEFPUSHBUTTON,
        BS_CHECKBOX,
        BS_AUTOCHECKBOX,
        BS_RADIOBUTTON,
        BS_3STATE,
        BS_AUTO3STATE,
        BS_GROUPBOX,
        BS_USERBUTTON,
        BS_AUTORADIOBUTTON,
        BS_OWNERDRAW,
        BS_SPLITBUTTON,
        BS_DEFSPLITBUTTON,
        BS_COMMANDLINK,
        BS_DEFCOMMANDLINK,
    };

    struct button_desc
    {
        HWND self;
        HWND parent;
        LONG style;
    };
    unsigned int i;
    HWND parent;

    parent = FUNC1(0, "TestParentClass", "Test parent", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                             100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC5(parent != 0, "Failed to create parent window\n");

    for (i = 0; i < FUNC0(styles); i++)
    {
        struct button_desc *desc;
        HWND hwnd;

        hwnd = FUNC4(styles[i], parent);
        FUNC5(hwnd != NULL, "Failed to create a button.\n");

        desc = (void *)FUNC3(hwnd, 0);
        FUNC5(desc != NULL, "Expected window data.\n");

        if (desc)
        {
            FUNC5(desc->self == hwnd, "Unexpected 'self' field.\n");
            FUNC5(desc->parent == parent, "Unexpected 'parent' field.\n");
            FUNC5(desc->style == (WS_CHILD | BS_NOTIFY | styles[i]), "Unexpected 'style' field.\n");
        }

        /* Data set and retrieved by these messages is valid for all buttons */
        FUNC6(hwnd);

        FUNC2(hwnd);
    }

    FUNC2(parent);
}