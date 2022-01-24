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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int INT_PTR ;
typedef  int /*<<< orphan*/ * HPEN ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_PEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOACCESS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_PEN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(void)
{
    BYTE buff[256];
    HDC hdc = FUNC2(NULL);
    HPEN hp;
    int i;
    BOOL ret;

    /* SelectObject() with a NULL DC returns 0 and sets ERROR_INVALID_HANDLE.
     * Note: Under XP at least invalid ptrs can also be passed, not just NULL;
     *       Don't test that here in case it crashes earlier win versions.
     */
    FUNC9(0);
    hp = FUNC8(NULL, FUNC6(BLACK_PEN));
    FUNC12(!hp && (FUNC3() == ERROR_INVALID_HANDLE || FUNC11(!FUNC3())),
       "SelectObject(NULL DC) expected 0, ERROR_INVALID_HANDLE, got %p, %u\n",
       *hp, FUNC3());

    /* With a valid DC and a NULL object, the call returns 0 but does not SetLastError() */
    FUNC9(0);
    hp = FUNC8(hdc, NULL);
    FUNC12(!hp && !FUNC3(),
       "SelectObject(NULL obj) expected 0, NO_ERROR, got %p, %u\n",
       *hp, FUNC3());

    /* The DC is unaffected by the NULL SelectObject */
    FUNC9(0);
    hp = FUNC8(hdc, FUNC6(BLACK_PEN));
    FUNC12(hp && !FUNC3(),
       "SelectObject(post NULL) expected non-null, NO_ERROR, got %p, %u\n",
       *hp, FUNC3());

    /* GetCurrentObject does not SetLastError() on a null object */
    FUNC9(0);
    hp = FUNC1(NULL, OBJ_PEN);
    FUNC12(!hp && !FUNC3(),
       "GetCurrentObject(NULL DC) expected 0, NO_ERROR, got %p, %u\n",
       *hp, FUNC3());

    /* DeleteObject does not SetLastError() on a null object */
    ret = FUNC0(NULL);
    FUNC12( !ret && !FUNC3(),
       "DeleteObject(NULL obj), expected 0, NO_ERROR, got %d, %u\n",
       ret, FUNC3());

    /* GetObject does not SetLastError() on a null object */
    FUNC9(0);
    i = FUNC4(NULL, sizeof(buff), buff);
    FUNC12 (!i && (FUNC3() == 0 || FUNC3() == ERROR_INVALID_PARAMETER),
        "GetObject(NULL obj), expected 0, NO_ERROR, got %d, %u\n",
	i, FUNC3());

    /* GetObject expects ERROR_NOACCESS when passed an invalid buffer */
    hp = FUNC8(hdc, FUNC6(BLACK_PEN));
    FUNC9(0);
    i = FUNC4(hp, (INT_PTR)buff, (LPVOID)sizeof(buff));
    FUNC12 (!i && (FUNC3() == 0 || FUNC3() == ERROR_NOACCESS),
        "GetObject(invalid buff), expected 0, ERROR_NOACCESS, got %d, %u\n",
    i, FUNC3());

    /* GetObjectType does SetLastError() on a null object */
    FUNC9(0);
    i = FUNC5(NULL);
    FUNC12 (!i && FUNC3() == ERROR_INVALID_HANDLE,
        "GetObjectType(NULL obj), expected 0, ERROR_INVALID_HANDLE, got %d, %u\n",
        i, FUNC3());

    /* UnrealizeObject does not SetLastError() on a null object */
    FUNC9(0);
    i = FUNC10(NULL);
    FUNC12 (!i && !FUNC3(),
        "UnrealizeObject(NULL obj), expected 0, NO_ERROR, got %d, %u\n",
        i, FUNC3());

    FUNC7(NULL, hdc);
}