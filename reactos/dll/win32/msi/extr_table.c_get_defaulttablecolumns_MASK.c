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
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  int /*<<< orphan*/  MSICOLUMNINFO ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * _Columns_cols ; 
 int /*<<< orphan*/ * _Tables_cols ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szColumns ; 
 int /*<<< orphan*/  szTables ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static UINT FUNC4( MSIDATABASE *db, LPCWSTR name, MSICOLUMNINFO *colinfo, UINT *sz )
{
    const MSICOLUMNINFO *p;
    DWORD i, n;

    FUNC0("%s\n", FUNC1(name));

    if (!FUNC2( name, szTables ))
    {
        p = _Tables_cols;
        n = 1;
    }
    else if (!FUNC2( name, szColumns ))
    {
        p = _Columns_cols;
        n = 4;
    }
    else return ERROR_FUNCTION_FAILED;

    for (i = 0; i < n; i++)
    {
        if (colinfo && i < *sz) colinfo[i] = p[i];
        if (colinfo && i >= *sz) break;
    }
    FUNC3( db, colinfo, n );
    *sz = n;
    return ERROR_SUCCESS;
}