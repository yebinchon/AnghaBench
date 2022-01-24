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
typedef  int /*<<< orphan*/  pe ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int const,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
#define  ERROR_SHARING_VIOLATION 134 
#define  FALSE 133 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
#define  FILE_SHARE_READ 132 
#define  FILE_SHARE_WRITE 131 
#define  GENERIC_READ 130 
#define  GENERIC_WRITE 129 
 int FUNC3 () ; 
 int FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int,char const*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 char* KEY ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 char* SECTION ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  TRUE 128 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const char *testfile1 = ".\\winesharing1.ini";
    static const char *testfile2 = ".\\winesharing2.ini";

    static const struct {
        DWORD dwDesiredAccess;
        DWORD dwShareMode;
        DWORD write_error;
        BOOL read_error;
        DWORD broken_error;
    } pe[] = {
        {GENERIC_READ,  FILE_SHARE_READ,  ERROR_SHARING_VIOLATION, FALSE },
        {GENERIC_READ,  FILE_SHARE_WRITE, ERROR_SHARING_VIOLATION, TRUE },
        {GENERIC_WRITE, FILE_SHARE_READ,  ERROR_SHARING_VIOLATION, FALSE },
        {GENERIC_WRITE, FILE_SHARE_WRITE, ERROR_SHARING_VIOLATION, TRUE },
        {GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ,  ERROR_SHARING_VIOLATION, FALSE },
        {GENERIC_READ|GENERIC_WRITE, FILE_SHARE_WRITE, ERROR_SHARING_VIOLATION, TRUE },
        {GENERIC_READ,  FILE_SHARE_READ|FILE_SHARE_WRITE, 0, FALSE, ERROR_SHARING_VIOLATION /* nt4 */},
        {GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE, 0, FALSE, ERROR_SHARING_VIOLATION /* nt4 */},
        /*Thief demo (bug 5024) opens .ini file like this*/
        {GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE, 0, FALSE, ERROR_SHARING_VIOLATION /* nt4 */}
    };

    int i;
    BOOL ret;
    DWORD size;
    HANDLE h = 0;
    char buffer[MAX_PATH];

    for (i=0; i < sizeof(pe)/sizeof(pe[0]); i++)
    {
        h = FUNC1(testfile1, pe[i].dwDesiredAccess, pe[i].dwShareMode, NULL,
                       CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
        FUNC9(INVALID_HANDLE_VALUE != h, "%d: CreateFile failed\n",i);
        FUNC5(0xdeadbeef);

        ret = FUNC7(SECTION, KEY, "12345", testfile1);
        if (!pe[i].write_error)
        {
            if (!ret)
                FUNC9( FUNC8(FUNC3() == pe[i].broken_error),
                    "%d: WritePrivateProfileString failed with error %u\n", i, FUNC3() );
            FUNC0(h);
            size = FUNC4(SECTION, KEY, 0, buffer, MAX_PATH, testfile1);
            if (ret)
                FUNC9( size == 5, "%d: test failed, number of characters copied: %d instead of 5\n", i, size );
            else
                FUNC9( !size, "%d: test failed, number of characters copied: %d instead of 0\n", i, size );
        }
        else
        {
            DWORD err = FUNC3();
            FUNC9( !ret, "%d: WritePrivateProfileString succeeded\n", i );
            if (!ret)
                FUNC9( err == pe[i].write_error, "%d: WritePrivateProfileString failed with error %u/%u\n",
                    i, err, pe[i].write_error );
            FUNC0(h);
            size = FUNC4(SECTION, KEY, 0, buffer, MAX_PATH, testfile1);
            FUNC9( !size, "%d: test failed, number of characters copied: %d instead of 0\n", i, size );
        }

        FUNC9( FUNC2(testfile1), "delete failed\n" );
    }

    h = FUNC1(testfile2, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC10( buffer, "[%s]\r\n%s=123\r\n", SECTION, KEY );
    FUNC9( FUNC6( h, buffer, FUNC11(buffer), &size, NULL ), "failed to write\n" );
    FUNC0( h );

    for (i=0; i < sizeof(pe)/sizeof(pe[0]); i++)
    {
        h = FUNC1(testfile2, pe[i].dwDesiredAccess, pe[i].dwShareMode, NULL,
                       OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
        FUNC9(INVALID_HANDLE_VALUE != h, "%d: CreateFile failed\n",i);
        FUNC5(0xdeadbeef);
        ret = FUNC4(SECTION, KEY, NULL, buffer, MAX_PATH, testfile2);
        /* Win9x and WinME returns 0 for all cases except the first one */
        if (!pe[i].read_error)
            FUNC9( ret ||
                FUNC8(!ret && FUNC3() == 0xdeadbeef), /* Win9x, WinME */
                "%d: GetPrivateProfileString failed with error %u\n", i, FUNC3() );
        else
            FUNC9( !ret, "%d: GetPrivateProfileString succeeded\n", i );
        FUNC0(h);
    }
    FUNC9( FUNC2(testfile2), "delete failed\n" );
}