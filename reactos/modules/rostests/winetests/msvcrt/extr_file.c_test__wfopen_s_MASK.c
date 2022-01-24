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
typedef  int /*<<< orphan*/  name ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ **,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9( void )
{
    const char name[] = "empty1";
    const WCHAR wname[] = {
       'e','m','p','t','y','1',0
    };
    const WCHAR wmode[] = {
       'w',0
    };
    char buff[16];
    FILE *file;
    int ret;
    int len;

    if (!&p__wfopen_s)
    {
        FUNC8("Skipping _wfopen_s test\n");
        return;
    }
    /* testing _wfopen_s */
    ret = FUNC6(&file, wname, wmode);
    FUNC5(ret == 0, "_wfopen_s failed with %d\n", ret);
    FUNC5(file != 0, "_wfopen_s failed to return value\n");
    FUNC4(name, sizeof(name), 1, file);

    ret = FUNC1(file);
    FUNC5(ret != EOF, "File failed to close\n");

    file = FUNC2(name, "r");
    FUNC5(file != 0, "fopen failed\n");
    len = FUNC3(buff, 1, sizeof(name), file);
    FUNC5(len == sizeof(name), "File length is %d\n", len);
    buff[sizeof(name)] = '\0';
    FUNC5(FUNC7(name, buff) == 0, "File content mismatch! Got %s, expected %s\n", buff, name);

    ret = FUNC1(file);
    FUNC5(ret != EOF, "File failed to close\n");

    FUNC5(FUNC0(name) == 0, "Couldn't unlink file named '%s'\n", name);
}