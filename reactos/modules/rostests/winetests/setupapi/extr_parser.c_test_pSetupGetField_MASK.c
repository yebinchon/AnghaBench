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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/ * HINF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/ * ERROR_INVALID_PARAMETER ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  contents ; 
 int /*<<< orphan*/ * getfield_resA ; 
 int /*<<< orphan*/ ** getfield_resW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    UINT err;
    BOOL ret;
    HINF hinf;
    LPCSTR fieldA;
    LPCWSTR fieldW;
    INFCONTEXT context;
    int i;
    int len;
    BOOL unicode = TRUE;

    FUNC1(0xdeadbeef);
    FUNC5(NULL, NULL);
    if (FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC12("Using A-functions instead of W\n");
        unicode = FALSE;
    }

    hinf = FUNC11( contents, &err );
    FUNC8( hinf != NULL, "Expected valid INF file\n" );

    ret = FUNC3( hinf, "FileBranchInfo", NULL, &context );
    FUNC8( ret, "Failed to find first line\n" );

    /* native Windows crashes if a NULL context is sent in */

    for ( i = 0; i < 3; i++ )
    {
        if (unicode)
        {
            fieldW = FUNC10( &context, i );
            FUNC8( fieldW != NULL, "Failed to get field %i\n", i );
            FUNC8( !FUNC5( getfield_resW[i], fieldW ), "Wrong string returned\n" );
        }
        else
        {
            fieldA = FUNC9( &context, i );
            FUNC8( fieldA != NULL, "Failed to get field %i\n", i );
            FUNC8( !FUNC4( getfield_resA[i], fieldA ), "Wrong string returned\n" );
        }
    }

    if (unicode)
    {
        fieldW = FUNC10( &context, 3 );
        FUNC8( fieldW != NULL, "Failed to get field 3\n" );
        len = FUNC7( fieldW );
        FUNC8( len == 511 || /* NT4, W2K, XP and W2K3 */
            len == 4096,  /* Vista */
            "Unexpected length, got %d\n", len );

        fieldW = FUNC10( &context, 4 );
        FUNC8( fieldW == NULL, "Expected NULL, got %p\n", fieldW );
        FUNC8( FUNC0() == ERROR_INVALID_PARAMETER,
            "Expected ERROR_INVALID_PARAMETER, got %u\n", FUNC0() );
    }
    else
    {
        fieldA = FUNC9( &context, 3 );
        FUNC8( fieldA != NULL, "Failed to get field 3\n" );
        len = FUNC6( fieldA );
        FUNC8( len == 511, /* Win9x, WinME */
            "Unexpected length, got %d\n", len );

        fieldA = FUNC9( &context, 4 );
        FUNC8( fieldA == NULL, "Expected NULL, got %p\n", fieldA );
        FUNC8( FUNC0() == ERROR_INVALID_PARAMETER,
            "Expected ERROR_INVALID_PARAMETER, got %u\n", FUNC0() );
    }

    FUNC2( hinf );
}