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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  dumping_on ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fs_file ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(int argc, char **argv)
{
    HANDLE hDirectDrawLocal;

    if (argc == 2)
    {
        if (FUNC4(argv[1],"-dump")==0)
        {
            dumping_on = TRUE;
        }

        if ( (FUNC4(argv[1],"-help")==0) ||
             (FUNC4(argv[1],"-?")==0) ||
             (FUNC4(argv[1],"/help")==0) ||
             (FUNC4(argv[1],"/?")==0) )
        {
            FUNC3("the %s support follow param \n",argv[0]);
            FUNC3("-dump              : It dump all data it resvie to screen \n");
            FUNC3("-dumpfile filename : It dump all data it resvie to file \n");
            FUNC3("\nrember u can only use one of them at time \n");
            FUNC0(1);
        }
    }

    if (argc == 3)
    {
        if (FUNC4(argv[1],"-dumpfile")==0)
        {
            /* create or over write a file in binary mode, and redirect printf to the file */ 
            if ( (fs_file = FUNC2(argv[2], "wb", stdout)) != NULL) 
            {
                dumping_on = TRUE;
            }
        }
    }

    hDirectDrawLocal = FUNC6();

    FUNC9(hDirectDrawLocal);

    FUNC8(hDirectDrawLocal);

    FUNC10(hDirectDrawLocal);

    FUNC5(hDirectDrawLocal);

    FUNC7(hDirectDrawLocal);

    if (fs_file != NULL)
    {
        FUNC1(fs_file);
    }
    return 0;
}