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
typedef  int LONG ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/ * HINF ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_LINE_NOT_FOUND ; 
 int ERROR_SECTION_NOT_FOUND ; 
 int ERROR_SUCCESS ; 
 int FUNC0 () ; 
 int MAX_INF_STRING_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const char *inf =
        "[Version]\n"
        "Signature=\"$Windows NT$\"\n"
        "[Sectionname]\n"
        "Keyname1=Field1,Field2,Field3\n"
        "\n"
        "Keyname2=Field4,Field5\n";
    HINF hinf;
    UINT err;
    INFCONTEXT context;
    BOOL retb;
    LONG retl;
    char buf[MAX_INF_STRING_LENGTH];
    int bufsize = MAX_INF_STRING_LENGTH;
    DWORD retsize;

    hinf = FUNC9( inf, &err );
    FUNC8( hinf != NULL, "Expected valid INF file\n" );

    FUNC1(0xdeadbeef);
    retb = FUNC3( hinf, "ImNotThere", NULL, &context );
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC3( hinf, "ImNotThere", "ImNotThere", &context );
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC3( hinf, "Sectionname", NULL, &context );
    FUNC8(retb, "Expected success\n");
    FUNC8(FUNC0() == ERROR_SUCCESS,
        "Expected ERROR_SUCCESS, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC3( hinf, "Sectionname", "ImNotThere", &context );
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC3( hinf, "Sectionname", "Keyname1", &context );
    FUNC8(retb, "Expected success\n");
    FUNC8(FUNC0() == ERROR_SUCCESS,
        "Expected ERROR_SUCCESS, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC4( &context, "ImNotThere", &context );
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC4( &context, "Keyname2", &context );
    FUNC8(retb, "Expected success\n");
    FUNC8(FUNC0() == ERROR_SUCCESS,
        "Expected ERROR_SUCCESS, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retl = FUNC6( hinf, "ImNotThere");
    FUNC8(retl == -1, "Expected -1, got %d\n", retl);
    FUNC8(FUNC0() == ERROR_SECTION_NOT_FOUND,
        "Expected ERROR_SECTION_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retl = FUNC6( hinf, "Sectionname");
    FUNC8(retl == 2, "Expected 2, got %d\n", retl);
    FUNC8(FUNC0() == ERROR_SUCCESS,
        "Expected ERROR_SUCCESS, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC7( NULL, hinf, "ImNotThere", "ImNotThere", buf, bufsize, &retsize);
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC7( NULL, hinf, "Sectionname", "ImNotThere", buf, bufsize, &retsize);
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC7( NULL, hinf, "Sectionname", "Keyname1", buf, bufsize, &retsize);
    FUNC8(retb, "Expected success\n");
    FUNC8(FUNC0() == ERROR_SUCCESS,
        "Expected ERROR_SUCCESS, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC5( hinf, "ImNotThere", 1, &context );
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC5( hinf, "Sectionname", 1, &context );
    FUNC8(retb, "Expected success\n");
    FUNC8(FUNC0() == ERROR_SUCCESS,
        "Expected ERROR_SUCCESS, got %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    retb = FUNC5( hinf, "Sectionname", 3, &context );
    FUNC8(!retb, "Expected failure\n");
    FUNC8(FUNC0() == ERROR_LINE_NOT_FOUND,
        "Expected ERROR_LINE_NOT_FOUND, got %08x\n", FUNC0());

    FUNC2( hinf );
}