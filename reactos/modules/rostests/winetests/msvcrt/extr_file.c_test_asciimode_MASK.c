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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    FILE *fp;
    char buf[64];
    int c, i, j;

    /* Simple test of CR CR LF handling.  Test both fgets and fread code paths, they're different! */
    fp = FUNC3("ascii.tst", "wb");
    FUNC4("\r\r\n", fp);
    FUNC0(fp);
    fp = FUNC3("ascii.tst", "rt");
    FUNC8(FUNC2(buf, sizeof(buf), fp) != NULL, "fgets\n");
    FUNC8(0 == FUNC10(buf, "\r\n"), "CR CR LF not read as CR LF\n");
    FUNC9(fp);
    FUNC8((FUNC5(buf, 1, sizeof(buf), fp) == 2) && (0 == FUNC10(buf, "\r\n")), "CR CR LF not read as CR LF\n");
    FUNC0(fp);
    FUNC11("ascii.tst");

    /* Simple test of foo ^Z [more than one block] bar handling */
    fp = FUNC3("ascii.tst", "wb");
    FUNC4("foo\032", fp);  /* foo, logical EOF, ... */
    FUNC6(fp, 65536L, SEEK_SET); /* ... more than MSVCRT_BUFSIZ, ... */
    FUNC4("bar", fp); /* ... bar */
    FUNC0(fp);
    fp = FUNC3("ascii.tst", "rt");
    FUNC8(FUNC2(buf, sizeof(buf), fp) != NULL, "fgets foo\n");
    FUNC8(0 == FUNC10(buf, "foo"), "foo ^Z not read as foo by fgets\n");
    FUNC8(FUNC2(buf, sizeof(buf), fp) == NULL, "fgets after logical EOF\n");
    FUNC9(fp);
    FUNC8((FUNC5(buf, 1, sizeof(buf), fp) == 3) && (0 == FUNC10(buf, "foo")), "foo ^Z not read as foo by fread\n");
    FUNC8((FUNC5(buf, 1, sizeof(buf), fp) == 0), "fread after logical EOF\n");
    FUNC0(fp);

    /* Show ASCII mode handling*/
    fp= FUNC3("ascii.tst","wb");
    FUNC4("0\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n", fp);
    FUNC0(fp);

    fp = FUNC3("ascii.tst", "r");
    c= FUNC1(fp);
    FUNC8(c == '0', "fgetc failed, expected '0', got '%c'\n", c);
    c= FUNC1(fp);
    FUNC8(c == '\n', "fgetc failed, expected '\\n', got '%c'\n", c);
    FUNC6(fp,0,SEEK_CUR);
    for(i=1; i<10; i++) {
	FUNC8((j = FUNC7(fp)) == i*3, "ftell fails in TEXT mode\n");
	FUNC6(fp,0,SEEK_CUR);
	FUNC8((c = FUNC1(fp)) == '0'+ i, "fgetc after fseek failed in line %d\n", i);
	c= FUNC1(fp);
        FUNC8(c == '\n', "fgetc failed, expected '\\n', got '%c'\n", c);
    }
    /* Show that fseek doesn't skip \\r !*/
    FUNC9(fp);
    c= FUNC1(fp);
    FUNC8(c == '0', "fgetc failed, expected '0', got '%c'\n", c);
    FUNC6(fp, 2 ,SEEK_CUR);
    for(i=1; i<10; i++) {
	FUNC8((c = FUNC1(fp)) == '0'+ i, "fgetc after fseek with pos Offset failed in line %d\n", i);
	FUNC6(fp, 2 ,SEEK_CUR);
    }
    FUNC6(fp, 9*3 ,SEEK_SET);
    c = FUNC1(fp);
    FUNC8(c == '9', "fgetc failed, expected '9', got '%c'\n", c);
    FUNC6(fp, -4 ,SEEK_CUR);
    for(i= 8; i>=0; i--) {
	FUNC8((c = FUNC1(fp)) == '0'+ i, "fgetc after fseek with neg Offset failed in line %d\n", i);
	FUNC6(fp, -4 ,SEEK_CUR);
    }
    /* Show what happens if fseek positions filepointer on \\r */
    FUNC0(fp);
    fp = FUNC3("ascii.tst", "r");
    FUNC6(fp, 3 ,SEEK_SET);
    FUNC8((c = FUNC1(fp)) == '1', "fgetc fails to read next char when positioned on \\r\n");
    FUNC0(fp);

    FUNC11("ascii.tst");
}