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
typedef  char const* LPCVOID ;
typedef  scalar_t__ HINF ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ INFINFO_REVERSE_DEFAULT_SEARCH ; 
 int INF_STYLE_OLDNT ; 
 int INF_STYLE_WIN4 ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static HINF FUNC4(LPCVOID InfSpec, DWORD SearchControl)
{
    HINF hInf = INVALID_HANDLE_VALUE;
    WCHAR inf_path[MAX_PATH];

    static const WCHAR infW[] = {'\\','i','n','f','\\',0};
    static const WCHAR system32W[] = {'\\','s','y','s','t','e','m','3','2','\\',0};

    if (SearchControl == INFINFO_REVERSE_DEFAULT_SEARCH)
    {
        FUNC0(inf_path, MAX_PATH);
        FUNC2(inf_path, system32W);
        FUNC2(inf_path, InfSpec);

        hInf = FUNC1(inf_path, NULL,
                                 INF_STYLE_OLDNT | INF_STYLE_WIN4, NULL);
        if (hInf != INVALID_HANDLE_VALUE)
            return hInf;

        FUNC0(inf_path, MAX_PATH);
        FUNC3(inf_path, infW);
        FUNC2(inf_path, InfSpec);

        return FUNC1(inf_path, NULL,
                                 INF_STYLE_OLDNT | INF_STYLE_WIN4, NULL);
    }

    return INVALID_HANDLE_VALUE;
}