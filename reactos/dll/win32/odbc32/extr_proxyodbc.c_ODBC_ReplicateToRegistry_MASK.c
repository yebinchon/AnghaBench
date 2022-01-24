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
typedef  scalar_t__ SQLRETURN ;
typedef  int /*<<< orphan*/  SQLHENV ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SQL_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6 (void)
{
    SQLRETURN sql_ret;
    SQLHENV hEnv;

    if ((sql_ret = FUNC0 (&hEnv)) == SQL_SUCCESS)
    {
        FUNC2 (hEnv);
        FUNC3 (FALSE /* system dsns */, hEnv);
        FUNC3 (TRUE /* user dsns */, hEnv);

        if ((sql_ret = FUNC1 (hEnv)) != SQL_SUCCESS)
        {
            FUNC4 ("Error %d freeing the SQL environment.\n", (int)sql_ret);
        }
    }
    else
    {
        FUNC4 ("Error %d opening an SQL environment.\n", (int)sql_ret);
        FUNC5 ("The external ODBC settings have not been replicated to the"
                " Wine registry\n");
    }
}