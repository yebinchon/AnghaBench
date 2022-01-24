#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int Level; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_1__ MSIFEATURE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ MSICONDITION_TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC7(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    LPCWSTR name;
    MSIFEATURE *feature;

    name = FUNC3( row, 1 );

    feature = FUNC6( package, name );
    if (!feature)
        FUNC0("FAILED to find loaded feature %s\n",FUNC5(name));
    else
    {
        LPCWSTR Condition;
        Condition = FUNC3(row,3);

        if (FUNC1(package,Condition) == MSICONDITION_TRUE)
        {
            int level = FUNC2(row,2);
            FUNC4("Resetting feature %s to level %i\n", FUNC5(name), level);
            feature->Level = level;
        }
    }
    return ERROR_SUCCESS;
}