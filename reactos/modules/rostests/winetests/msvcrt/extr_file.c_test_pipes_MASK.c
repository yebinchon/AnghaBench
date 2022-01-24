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
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int N_TEST_MESSAGES ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  O_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _O_WTEXT ; 
 int /*<<< orphan*/  _P_NOWAIT ; 
 scalar_t__ FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,char const**) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 scalar_t__ p_fopen_s ; 
 char* pipe_string ; 
 scalar_t__* proc_handles ; 
 int FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int,char*,int) ; 

__attribute__((used)) static void FUNC20(const char* selfname)
{
    int pipes[2];
    char str_fdr[12], str_fdw[12];
    FILE* file;
    const char* arg_v[6];
    char buf[4096];
    char expected[4096];
    int r;
    int i;

    /* Test reading from a pipe with read() */
    if (FUNC1(pipes, 1024, O_BINARY) < 0)
    {
        FUNC11(0, "pipe failed with errno %d\n", errno);
        return;
    }

    arg_v[0] = FUNC9(selfname);
    arg_v[1] = "tests/file.c";
    arg_v[2] = "pipes";
    arg_v[3] = str_fdr; FUNC14(str_fdr, "%d", pipes[0]);
    arg_v[4] = str_fdw; FUNC14(str_fdw, "%d", pipes[1]);
    arg_v[5] = NULL;
    proc_handles[0] = (HANDLE)FUNC2(_P_NOWAIT, selfname, arg_v);
    i=FUNC3(pipes[1]);
    FUNC11(!i, "unable to close %d: %d\n", pipes[1], errno);

    for (i=0; i<N_TEST_MESSAGES; i++) {
       r=FUNC12(pipes[0], buf, sizeof(buf)-1);
       FUNC11(r == FUNC17(pipe_string), "i %d, got %d\n", i, r);
       if (r > 0)
           buf[r]='\0';
       FUNC11(FUNC16(buf, pipe_string) == 0, "expected to read '%s', got '%s'\n", pipe_string, buf);
   }

    r=FUNC12(pipes[0], buf, sizeof(buf)-1);
    FUNC11(r == 0, "expected to read 0 bytes, got %d\n", r);
    i=FUNC3(pipes[0]);
    FUNC11(!i, "unable to close %d: %d\n", pipes[0], errno);

    /* Test reading from a pipe with fread() */
    if (FUNC1(pipes, 1024, O_BINARY) < 0)
    {
        FUNC11(0, "pipe failed with errno %d\n", errno);
        return;
    }

    arg_v[1] = "tests/file.c";
    arg_v[2] = "pipes";
    arg_v[3] = str_fdr; FUNC14(str_fdr, "%d", pipes[0]);
    arg_v[4] = str_fdw; FUNC14(str_fdw, "%d", pipes[1]);
    arg_v[5] = NULL;
    proc_handles[1] = (HANDLE)FUNC2(_P_NOWAIT, selfname, arg_v);
    i=FUNC3(pipes[1]);
    FUNC11(!i, "unable to close %d: %d\n", pipes[1], errno);
    file=FUNC5(pipes[0], "r");

    /* In blocking mode, fread will keep calling read() until it gets
     * enough bytes, or EOF, even on Unix.  (If this were a Unix terminal
     * in cooked mode instead of a pipe, it would also stop on EOL.)
     */
    expected[0] = 0;
    for (i=0; i<N_TEST_MESSAGES; i++)
       FUNC15(expected, pipe_string);
    r=FUNC8(buf, 1, sizeof(buf)-1, file);
    FUNC11(r == FUNC17(expected), "fread() returned %d: ferror=%d\n", r, FUNC7(file));
    if (r > 0)
       buf[r]='\0';
    FUNC11(FUNC16(buf, expected) == 0, "got '%s' expected '%s'\n", buf, expected);

    /* Let child close the file before we read, so we can sense EOF reliably */
    FUNC0(100);
    r=FUNC8(buf, 1, sizeof(buf)-1, file);
    FUNC11(r == 0, "fread() returned %d instead of 0\n", r);
    FUNC11(FUNC7(file) == 0, "got ferror() = %d\n", FUNC7(file));
    FUNC11(FUNC6(file), "feof() is false!\n");

    i=FUNC4(file);
    FUNC11(!i, "unable to close the pipe: %d\n", errno);

    /* test \r handling when it's the last character read */
    if (FUNC1(pipes, 1024, O_BINARY) < 0)
    {
        FUNC11(0, "pipe failed with errno %d\n", errno);
        return;
    }
    r = FUNC19(pipes[1], "\r\n\rab\r\n", 7);
    FUNC11(r == 7, "write returned %d, errno = %d\n", r, errno);
    FUNC13(pipes[0], O_TEXT);
    r = FUNC12(pipes[0], buf, 1);
    FUNC11(r == 1, "read returned %d, expected 1\n", r);
    FUNC11(buf[0] == '\n', "buf[0] = %x, expected '\\n'\n", buf[0]);
    r = FUNC12(pipes[0], buf, 1);
    FUNC11(r == 1, "read returned %d, expected 1\n", r);
    FUNC11(buf[0] == '\r', "buf[0] = %x, expected '\\r'\n", buf[0]);
    r = FUNC12(pipes[0], buf, 1);
    FUNC11(r == 1, "read returned %d, expected 1\n", r);
    FUNC11(buf[0] == 'a', "buf[0] = %x, expected 'a'\n", buf[0]);
    r = FUNC12(pipes[0], buf, 2);
    FUNC11(r == 2, "read returned %d, expected 1\n", r);
    FUNC11(buf[0] == 'b', "buf[0] = %x, expected 'b'\n", buf[0]);
    FUNC11(buf[1] == '\n', "buf[1] = %x, expected '\\n'\n", buf[1]);

    if (p_fopen_s)
    {
        /* test utf16 read with insufficient data */
        r = FUNC19(pipes[1], "a\0b", 3);
        FUNC11(r == 3, "write returned %d, errno = %d\n", r, errno);
        buf[2] = 'z';
        buf[3] = 'z';
        FUNC13(pipes[0], _O_WTEXT);
        r = FUNC12(pipes[0], buf, 4);
        FUNC11(r == 2, "read returned %d, expected 2\n", r);
        FUNC11(!FUNC10(buf, "a\0bz", 4), "read returned incorrect data\n");
        r = FUNC19(pipes[1], "\0", 1);
        FUNC11(r == 1, "write returned %d, errno = %d\n", r, errno);
        buf[0] = 'z';
        buf[1] = 'z';
        r = FUNC12(pipes[0], buf, 2);
        FUNC11(r == 0, "read returned %d, expected 0\n", r);
        FUNC11(!FUNC10(buf, "\0z", 2), "read returned incorrect data\n");
    }
    else
    {
        FUNC18("unicode mode tests on pipe\n");
    }

    FUNC3(pipes[1]);
    FUNC3(pipes[0]);
}