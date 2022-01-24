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
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  char const* DWORD ;

/* Variables and functions */
 char const* ERROR_INVALID_PARAMETER ; 
 char* FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

__attribute__((used)) static const char *FUNC4( INFCONTEXT *context, const char *wanted )
{
    const char *key = FUNC1( context, 0 );
    DWORD err = FUNC0();

    if (!key)
    {
        FUNC2( !wanted, "missing key %s\n", wanted );
        FUNC2( err == 0 || err == ERROR_INVALID_PARAMETER, "last error set to %u\n", err );
    }
    else
    {
        FUNC2( !FUNC3( key, wanted ), "bad key %s/%s\n", key, wanted );
        FUNC2( err == 0, "last error set to %u\n", err );
    }
    return key;
}