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
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(int argc, char *argv[])
{
    WSADATA WsaData;
    int i;

    FUNC5(LC_ALL, "");

    FUNC3(FUNC1(2, 2), &WsaData);

    for (i = 1; i < argc; ++i)
    {
        if (!FUNC6(argv[i], "/?") || !FUNC6(argv[i], "-?"))
        {
            FUNC2();
            return 0;
        }
        else
        {
            FUNC4("Unsupported argument: %s\n", argv[i]);
            return -1;
        }
    }

    FUNC0();

    return 0;
}