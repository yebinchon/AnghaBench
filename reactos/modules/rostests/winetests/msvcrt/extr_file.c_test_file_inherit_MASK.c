#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  startup ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_8__ {int nLength; int /*<<< orphan*/  bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; } ;
struct TYPE_7__ {int cb; int cbReserved2; scalar_t__ lpReserved2; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_NOINHERIT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  _P_WAIT ; 
 int _S_IREAD ; 
 int _S_IWRITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,scalar_t__*) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int FUNC12 (char*,int,int) ; 
 int FUNC13 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,...) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC17 (char*) ; 

__attribute__((used)) static void FUNC18( const char* selfname )
{
    int			fd;
    const char*		arg_v[5];
    char 		buffer[16];
    char cmdline[MAX_PATH];
    STARTUPINFOA startup;
    SECURITY_ATTRIBUTES sa;
    HANDLE handles[3];

    fd = FUNC12 ("fdopen.tst", O_CREAT | O_RDWR | O_BINARY, _S_IREAD |_S_IWRITE);
    FUNC11(fd != -1, "Couldn't create test file\n");
    arg_v[0] = FUNC8(selfname);
    arg_v[1] = "tests/file.c";
    arg_v[2] = "inherit";
    arg_v[3] = buffer; FUNC14(buffer, "%d", fd);
    arg_v[4] = 0;
    FUNC5(_P_WAIT, selfname, arg_v);
    FUNC11(FUNC15(fd) == 8, "bad position %u expecting 8\n", FUNC15(fd));
    FUNC9(fd, 0, SEEK_SET);
    FUNC11(FUNC13(fd, buffer, sizeof (buffer)) == 8 && FUNC10(buffer, "Success", 8) == 0, "Couldn't read back the data\n");
    FUNC6 (fd);
    FUNC11(FUNC17("fdopen.tst") == 0, "Couldn't unlink\n");
    
    fd = FUNC12 ("fdopen.tst", O_CREAT | O_RDWR | O_BINARY | O_NOINHERIT, _S_IREAD |_S_IWRITE);
    FUNC11(fd != -1, "Couldn't create test file\n");
    arg_v[1] = "tests/file.c";
    arg_v[2] = "inherit_no";
    arg_v[3] = buffer; FUNC14(buffer, "%d", fd);
    arg_v[4] = 0;
    FUNC5(_P_WAIT, selfname, arg_v);
    FUNC11(FUNC15(fd) == 0, "bad position %u expecting 0\n", FUNC15(fd));
    FUNC11(FUNC13(fd, buffer, sizeof (buffer)) == 0, "Found unexpected data (%s)\n", buffer);
    FUNC6 (fd);
    FUNC11(FUNC17("fdopen.tst") == 0, "Couldn't unlink\n");

    /* make file handle inheritable */
    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = NULL;
    sa.bInheritHandle = TRUE;
    FUNC14(cmdline, "%s file inherit 1", selfname);

    /* init an empty Reserved2, which should not be recognized as inherit-block */
    FUNC4(&startup, sizeof(startup));
    startup.cb = sizeof(startup);
    FUNC7( &startup, 0, NULL );
    FUNC16( &startup, cmdline, 0, FALSE, "empty block" );

    /* test with valid inheritblock */
    handles[0] = FUNC3( STD_INPUT_HANDLE );
    handles[1] = FUNC1( "fdopen.tst", GENERIC_READ|GENERIC_WRITE,
                              FILE_SHARE_READ | FILE_SHARE_WRITE, &sa, CREATE_ALWAYS, 0, NULL );
    handles[2] = FUNC3( STD_ERROR_HANDLE );
    FUNC7( &startup, 3, handles );
    FUNC16( &startup, cmdline, handles[1], TRUE, "valid block" );
    FUNC0( handles[1] );
    FUNC2("fdopen.tst");

    /* test inherit block starting with unsigned zero */
    handles[1] = FUNC1( "fdopen.tst", GENERIC_READ|GENERIC_WRITE,
                              FILE_SHARE_READ | FILE_SHARE_WRITE, &sa, CREATE_ALWAYS, 0, NULL );
    FUNC7( &startup, 3, handles );
    *(unsigned int *)startup.lpReserved2 = 0;
    FUNC16( &startup, cmdline, handles[1], FALSE, "zero count block" );
    FUNC0( handles[1] );
    FUNC2("fdopen.tst");

    /* test inherit block with smaller size */
    handles[1] = FUNC1( "fdopen.tst", GENERIC_READ|GENERIC_WRITE,
                              FILE_SHARE_READ | FILE_SHARE_WRITE, &sa, CREATE_ALWAYS, 0, NULL );
    FUNC7( &startup, 3, handles );
    startup.cbReserved2 -= 3;
    FUNC16( &startup, cmdline, handles[1], TRUE, "small size block" );
    FUNC0( handles[1] );
    FUNC2("fdopen.tst");

    /* test inherit block with even smaller size */
    handles[1] = FUNC1( "fdopen.tst", GENERIC_READ|GENERIC_WRITE,
                              FILE_SHARE_READ | FILE_SHARE_WRITE, &sa, CREATE_ALWAYS, 0, NULL );
    FUNC7( &startup, 3, handles );
    startup.cbReserved2 = sizeof(unsigned int) + sizeof(HANDLE) + sizeof(char);
    FUNC16( &startup, cmdline, handles[1], FALSE, "smaller size block" );
    FUNC0( handles[1] );
    FUNC2("fdopen.tst");

    /* test inherit block with larger size */
    handles[1] = FUNC1( "fdopen.tst", GENERIC_READ|GENERIC_WRITE,
                              FILE_SHARE_READ | FILE_SHARE_WRITE, &sa, CREATE_ALWAYS, 0, NULL );
    FUNC7( &startup, 3, handles );
    startup.cbReserved2 += 7;
    FUNC16( &startup, cmdline, handles[1], TRUE, "large size block" );
    FUNC0( handles[1] );
    FUNC2("fdopen.tst");
}