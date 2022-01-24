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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ LPSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static INT FUNC6( HWND hDlg, LPSTR spec, INT idLBox,
                               INT idStatic, UINT attrib, BOOL combo )
{
    if (spec)
    {
        INT ret, len = FUNC4( CP_ACP, 0, spec, -1, NULL, 0 );
        LPWSTR specW = FUNC2( FUNC1(), 0, len * sizeof(WCHAR) );
        if (specW == NULL)
            return FALSE;
        FUNC4( CP_ACP, 0, spec, -1, specW, len );
        ret = FUNC0( hDlg, specW, idLBox, idStatic, attrib, combo );
        FUNC5( CP_ACP, 0, specW, -1, spec, 0x7fffffff, NULL, NULL );
        FUNC3( FUNC1(), 0, specW );
        return ret;
    }
    return FUNC0( hDlg, NULL, idLBox, idStatic, attrib, combo );
}