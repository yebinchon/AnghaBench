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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( LPCWSTR target )
{
    LPWSTR msg;
    WCHAR val[MAX_PATH];

    static const WCHAR MsiBreak[] = { 'M','s','i','B','r','e','a','k',0 };
    static const WCHAR WindowsInstaller[] = {
        'W','i','n','d','o','w','s',' ','I','n','s','t','a','l','l','e','r',0
    };

    static const WCHAR format[] = {
        'T','o',' ','d','e','b','u','g',' ','y','o','u','r',' ',
        'c','u','s','t','o','m',' ','a','c','t','i','o','n',',',' ',
        'a','t','t','a','c','h',' ','y','o','u','r',' ','d','e','b','u','g','g','e','r',' ',
        't','o',' ','p','r','o','c','e','s','s',' ','%','i',' ','(','0','x','%','X',')',' ',
        'a','n','d',' ','p','r','e','s','s',' ','O','K',0
    };

    if( !FUNC2( MsiBreak, val, MAX_PATH ))
        return;

    if( FUNC7( val, target ))
        return;

    msg = FUNC5( (FUNC4(format) + 10) * sizeof(WCHAR) );
    if (!msg)
        return;

    FUNC8( msg, format, FUNC1(), FUNC1());
    FUNC3( NULL, msg, WindowsInstaller, MB_OK);
    FUNC6(msg);
    FUNC0();
}