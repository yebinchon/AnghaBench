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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ MSICONDITION_FALSE ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  SCRIPT_NONE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static UINT FUNC8(MSIPACKAGE *package, UINT seq)
{
    UINT rc = ERROR_SUCCESS;
    MSIRECORD *row;

    static const WCHAR query[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
         '`','I','n','s','t','a','l','l','E','x','e','c','u','t','e',
         'S','e','q','u','e','n','c','e','`',' ', 'W','H','E','R','E',' ',
         '`','S','e','q','u','e','n','c','e','`',' ', '=',' ','%','i',0};
    static const WCHAR ui_query[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
     '`','I','n','s','t','a','l','l','U','I','S','e','q','u','e','n','c','e',
     '`', ' ', 'W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',
	 ' ', '=',' ','%','i',0};

    if (FUNC7(package))
        row = FUNC3(package->db, ui_query, seq);
    else
        row = FUNC3(package->db, query, seq);

    if (row)
    {
        LPCWSTR action, cond;

        FUNC5("Running the actions\n");

        /* check conditions */
        cond = FUNC4(row, 2);

        /* this is a hack to skip errors in the condition code */
        if (FUNC2(package, cond) == MSICONDITION_FALSE)
        {
            FUNC6(&row->hdr);
            return ERROR_SUCCESS;
        }

        action = FUNC4(row, 1);
        if (!action)
        {
            FUNC1("failed to fetch action\n");
            FUNC6(&row->hdr);
            return ERROR_FUNCTION_FAILED;
        }

        rc = FUNC0(package, action, SCRIPT_NONE);

        FUNC6(&row->hdr);
    }

    return rc;
}