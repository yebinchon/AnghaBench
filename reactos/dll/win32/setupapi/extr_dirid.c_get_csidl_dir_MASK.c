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
typedef  int /*<<< orphan*/  const WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const WCHAR *FUNC7( DWORD csidl )
{
    WCHAR buffer[MAX_PATH], *str;
    int len;

    if (!FUNC3( NULL, buffer, csidl, TRUE ))
    {
        FUNC0( "CSIDL %x not found\n", csidl );
        return FUNC4();
    }
    len = (FUNC6(buffer) + 1) * sizeof(WCHAR);
    if ((str = FUNC2( FUNC1(), 0, len ))) FUNC5( str, buffer, len );
    return str;
}