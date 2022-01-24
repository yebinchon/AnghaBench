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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOF ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5( void )
{
    char fname1[] = "empty1";
    char fname2[] = "empty2";
    char fname3[] = "empty3";
    FILE *stream1, *stream2, *stream3, *stream4;
    int ret, numclosed;

    /* testing fopen() */
    stream1 = FUNC3(fname1, "w+");
    FUNC4(stream1 != NULL, "The file '%s' was not opened\n", fname1);
    stream2 = FUNC3(fname2, "w ");
    FUNC4(stream2 != NULL, "The file '%s' was not opened\n", fname2 );
    FUNC1(fname3);
    stream3 = FUNC3(fname3, "r");
    FUNC4(stream3 == NULL, "The file '%s' shouldn't exist before\n", fname3 );
    stream3 = FUNC3(fname3, "w+");
    FUNC4(stream3 != NULL, "The file '%s' should be opened now\n", fname3 );
    errno = 0xfaceabad;
    stream4 = FUNC3("", "w+");
    FUNC4(stream4 == NULL && (errno == EINVAL || errno == ENOENT),
       "filename is empty, errno = %d (expected 2 or 22)\n", errno);
    errno = 0xfaceabad;
    stream4 = FUNC3(NULL, "w+");
    FUNC4(stream4 == NULL && (errno == EINVAL || errno == ENOENT), 
       "filename is NULL, errno = %d (expected 2 or 22)\n", errno);

    /* testing fclose() */
    ret = FUNC2(stream2);
    FUNC4(ret == 0, "The file '%s' was not closed\n", fname2);
    ret = FUNC2(stream3);
    FUNC4(ret == 0, "The file '%s' was not closed\n", fname3);
    errno = 0xdeadbeef;
    ret = FUNC2(stream2);
    FUNC4(ret == EOF, "Closing file '%s' returned %d\n", fname2, ret);
    FUNC4(errno == 0xdeadbeef, "errno = %d\n", errno);
    ret = FUNC2(stream3);
    FUNC4(ret == EOF, "Closing file '%s' returned %d\n", fname3, ret);
    FUNC4(errno == 0xdeadbeef, "errno = %d\n", errno);

    /* testing fcloseall() */
    numclosed = FUNC0();
    /* fname1 should be closed here */
    FUNC4(numclosed == 1, "Number of files closed by fcloseall(): %u\n", numclosed);
    numclosed = FUNC0();
    FUNC4(numclosed == 0, "Number of files closed by fcloseall(): %u\n", numclosed);

    FUNC4(FUNC1(fname1) == 0, "Couldn't unlink file named '%s'\n", fname1);
    FUNC4(FUNC1(fname2) == 0, "Couldn't unlink file named '%s'\n", fname2);
    FUNC4(FUNC1(fname3) == 0, "Couldn't unlink file named '%s'\n", fname3);
}