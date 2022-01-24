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
typedef  int /*<<< orphan*/  _TCHAR ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  APP_ONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SHOW_ALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UPD_ONLY ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(int argc, _TCHAR* argv[])
{
    INT iNumber;
    TCHAR Char[4 + 1];

    FUNC2(FUNC4("Application Wizard"));

    if (argc < 2)
    {
        FUNC1();
        return 0;
    }

	if (FUNC5(argv[1], FUNC4("/?"), 2) == 0)
	{
		FUNC0();
		return 0;
	}

    if (FUNC5(argv[1], FUNC4("/l"), 2) == 0)
    {
        if (argc < 3) goto ShowAll;
        if (FUNC5(argv[2], FUNC4("/all"), 4) == 0)
        {
ShowAll:
            if (FUNC3(SHOW_ALL, -1) == 0) return 0;
            FUNC7(FUNC4("%s"), Char);

            iNumber = FUNC6(Char);

            if (iNumber == 0) return 0;
            FUNC3(SHOW_ALL, iNumber);
        }
        else if (FUNC5(argv[2], FUNC4("/app"), 4) == 0)
        {
            if (FUNC3(APP_ONLY, -1) == 0) return 0;

            FUNC7(FUNC4("%s"), Char);

            iNumber = FUNC6(Char);

            if (iNumber == 0) return 0;
            FUNC3(APP_ONLY, iNumber);
        }
        else if (FUNC5(argv[2], FUNC4("/upd"), 4) == 0)
        {
            if (FUNC3(UPD_ONLY, -1) == 0) return 0;

            FUNC7(FUNC4("%s"), Char);

            iNumber = FUNC6(Char);

            if (iNumber == 0) return 0;
            FUNC3(UPD_ONLY, iNumber);
        }

        return 0;
    }

	return 0;
}