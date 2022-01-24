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
typedef  int fpos_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8( void )
{
    FILE *fp;
    int c;
    fpos_t pos;

    fp = FUNC3("filbuf.tst", "wb");
    FUNC5("\n\n\n\n", 1, 4, fp);
    FUNC1(fp);

    fp = FUNC3("filbuf.tst", "rt");
    c = FUNC0(fp);
    FUNC6(c == '\n', "read wrong byte\n");
    /* See bug 16970 for why we care about _filbuf.
     * ftell returns screwy values on files with lots
     * of bare LFs in ascii mode because it assumes
     * that ascii files contain only CRLFs, removes
     * the CR's early in _filbuf, and adjusts the return
     * value of ftell to compensate.
     * native _filbuf will read the whole file, then consume and return
     * the first one.  That leaves fp->_fd at offset 4, and fp->_ptr
     * pointing to a buffer of three bare LFs, so
     * ftell will return 4 - 3 - 3 = -2.
     */
    FUNC6(FUNC4(fp) == -2, "ascii crlf removal does not match native\n");
    FUNC6(FUNC2(fp, &pos) == 0, "fgetpos fail\n");
    FUNC6(pos == -2, "ftell does not match fgetpos\n");
    FUNC1(fp);
    FUNC7("filbuf.tst");
}