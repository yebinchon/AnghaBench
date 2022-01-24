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
typedef  char WCHAR ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static const WCHAR *FUNC5(void)
{
    static WCHAR *unknown_dirid;
    static const WCHAR unknown_str[] = {'\\','u','n','k','n','o','w','n',0};

    if (!unknown_dirid)
    {
        UINT len = FUNC1( NULL, 0 ) + FUNC4(unknown_str);
        if (!(unknown_dirid = FUNC2( FUNC0(), 0, len * sizeof(WCHAR) ))) return NULL;
        FUNC1( unknown_dirid, len );
        FUNC3( unknown_dirid, unknown_str );
    }
    return unknown_dirid;
}