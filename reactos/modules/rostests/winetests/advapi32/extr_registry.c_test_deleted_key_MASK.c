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
typedef  int /*<<< orphan*/  value ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_KEY_DELETED ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void)
{
    HKEY hkey, hkey2;
    char value[20];
    DWORD val_count, type;
    LONG res;

    /* Open the test key, then delete it while it's open */
    FUNC5( HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkey );

    FUNC8( hkey_main );

    val_count = sizeof(value);
    type = 0;
    res = FUNC3( hkey, 0, value, &val_count, NULL, &type, 0, 0 );
    FUNC9(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    res = FUNC2( hkey, 0, value, sizeof(value) );
    FUNC9(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    val_count = sizeof(value);
    type = 0;
    res = FUNC6( hkey, "test", NULL, &type, (BYTE *)value, &val_count );
    FUNC9(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    res = FUNC7( hkey, "test", 0, REG_SZ, (const BYTE*)"value", 6);
    FUNC9(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    res = FUNC5( hkey, "test", &hkey2 );
    FUNC9(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);
    if (res == 0)
        FUNC0( hkey2 );

    res = FUNC1( hkey, "test", &hkey2 );
    FUNC9(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);
    if (res == 0)
        FUNC0( hkey2 );

    res = FUNC4( hkey );
    FUNC9(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    FUNC0( hkey );

    FUNC10();
}