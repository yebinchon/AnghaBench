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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  MSISIGNATURE ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_1__* LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_NO_MORE_ITEMS ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  szOne ; 

__attribute__((used)) static UINT FUNC7(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    LPCWSTR signature;
    LPWSTR value = NULL;
    MSISIGNATURE sig;
    UINT r = ERROR_SUCCESS;

    static const WCHAR success[] = {'C','C','P','_','S','u','c','c','e','s','s',0};

    signature = FUNC2(row, 1);

    FUNC3("%s\n", FUNC4(signature));

    FUNC0(package, signature, &sig, &value);
    if (value)
    {
        FUNC3("Found signature %s\n", FUNC4(signature));
        FUNC6( package->db, success, szOne, -1 );
        FUNC5(value);
        r = ERROR_NO_MORE_ITEMS;
    }

    FUNC1(&sig);

    return r;
}