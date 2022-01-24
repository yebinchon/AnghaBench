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
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ENVVAR_NOT_FOUND ; 
 int FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(void)
{
    const char* value="Long long value";
    const char* not_an_env_var="%NotAnEnvVar%";
    char buf[256], buf1[256], buf2[0x8000];
    DWORD ret_size, ret_size1;

    FUNC3("EnvVar", value);

    ret_size = FUNC0(NULL, buf1, sizeof(buf1));
    FUNC5(ret_size == 1 || ret_size == 0 /* Win9x */ || ret_size == 2 /* NT4 */,
       "ExpandEnvironmentStrings returned %d\n", ret_size);

    /* Try to get the required buffer size 'the natural way' */
    FUNC7(buf, "%EnvVar%");
    ret_size = FUNC0(buf, NULL, 0);
    FUNC5(ret_size == FUNC8(value)+1 || /* win98 */
       ret_size == (FUNC8(value)+1)*2 || /* NT4 */
       ret_size == FUNC8(value)+2 || /* win2k, XP, win2k3 */
       ret_size == 0 /* Win95 */,
       "ExpandEnvironmentStrings returned %d instead of %d, %d or %d\n",
       ret_size, FUNC4(value)+1, FUNC4(value)+2, 0);

    /* Again, side-stepping the Win95 bug */
    ret_size = FUNC0(buf, buf1, 0);
    /* v5.1.2600.2945 (XP SP2) returns len + 2 here! */
    FUNC5(ret_size == FUNC8(value)+1 || ret_size == FUNC8(value)+2 ||
       ret_size == (FUNC8(value)+1)*2 /* NT4 */,
       "ExpandEnvironmentStrings returned %d instead of %d\n",
       ret_size, FUNC4(value)+1);

    /* Try with a buffer that's too small */
    ret_size = FUNC0(buf, buf1, 12);
    /* v5.1.2600.2945 (XP SP2) returns len + 2 here! */
    FUNC5(ret_size == FUNC8(value)+1 || ret_size == FUNC8(value)+2 ||
       ret_size == (FUNC8(value)+1)*2 /* NT4 */,
       "ExpandEnvironmentStrings returned %d instead of %d\n",
       ret_size, FUNC4(value)+1);

    /* Try with a buffer of just the right size */
    /* v5.1.2600.2945 (XP SP2) needs and returns len + 2 here! */
    ret_size = FUNC0(buf, buf1, ret_size);
    FUNC5(ret_size == FUNC8(value)+1 || ret_size == FUNC8(value)+2 ||
       ret_size == (FUNC8(value)+1)*2 /* NT4 */,
       "ExpandEnvironmentStrings returned %d instead of %d\n",
       ret_size, FUNC4(value)+1);
    FUNC5(!FUNC6(buf1, value), "ExpandEnvironmentStrings returned [%s]\n", buf1);

    /* Try with an unset environment variable */
    FUNC7(buf, not_an_env_var);
    ret_size = FUNC0(buf, buf1, sizeof(buf1));
    FUNC5(ret_size == FUNC8(not_an_env_var)+1 ||
       ret_size == (FUNC8(not_an_env_var)+1)*2 /* NT4 */,
       "ExpandEnvironmentStrings returned %d instead of %d\n", ret_size, FUNC4(not_an_env_var)+1);
    FUNC5(!FUNC6(buf1, not_an_env_var), "ExpandEnvironmentStrings returned [%s]\n", buf1);

    /* test a large destination size */
    FUNC7(buf, "12345");
    ret_size = FUNC0(buf, buf2, sizeof(buf2));
    FUNC5(!FUNC6(buf, buf2), "ExpandEnvironmentStrings failed %s vs %s. ret_size = %d\n", buf, buf2, ret_size);

    ret_size1 = FUNC2(buf1,256);
    FUNC5 ((ret_size1 >0) && (ret_size1<256), "GetWindowsDirectory Failed\n");
    ret_size = FUNC0("%SystemRoot%",buf,sizeof(buf));
    if (ERROR_ENVVAR_NOT_FOUND != FUNC1())
    {
        FUNC5(!FUNC6(buf, buf1), "ExpandEnvironmentStrings failed %s vs %s. ret_size = %d\n", buf, buf1, ret_size);
    }

    /* Try with a variable that references another */
    FUNC3("IndirectVar", "Foo%EnvVar%Bar");
    FUNC7(buf, "Indirect-%IndirectVar%-Indirect");
    FUNC7(buf2, "Indirect-Foo%EnvVar%Bar-Indirect");
    ret_size = FUNC0(buf, buf1, sizeof(buf1));
    FUNC5(ret_size == FUNC8(buf2)+1 ||
       ret_size == (FUNC8(buf2)+1)*2 /* NT4 */,
       "ExpandEnvironmentStrings returned %d instead of %d\n", ret_size, FUNC4(buf2)+1);
    FUNC5(!FUNC6(buf1, buf2), "ExpandEnvironmentStrings returned [%s]\n", buf1);
    FUNC3("IndirectVar", NULL);

    FUNC3("EnvVar", NULL);
}