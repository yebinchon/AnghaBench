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
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  LSTATUS ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  size_t DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  hkey_main ; 
 scalar_t__ FUNC6 (int*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t) ; 

__attribute__((used)) static void FUNC11(void)
{
    HKEY subkey;
    LSTATUS ret;
    static const char string[] = "FullString";
    char name[11];
    BYTE buffer[11];
    DWORD insize, outsize, nsize;

    ret = FUNC1(hkey_main, "string_termination", &subkey);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    /* Off-by-one RegSetValueExA -> adds a trailing '\0'! */
    insize=sizeof(string)-1;
    ret = FUNC5(subkey, "stringtest", 0, REG_SZ, (BYTE*)string, insize);
    FUNC8(ret == ERROR_SUCCESS, "RegSetValueExA failed: %d\n", ret);
    outsize=insize;
    ret = FUNC4(subkey, "stringtest", NULL, NULL, buffer, &outsize);
    FUNC8(ret == ERROR_MORE_DATA, "RegQueryValueExA returned: %d\n", ret);

    /* Off-by-two RegSetValueExA -> no trailing '\0' */
    insize=sizeof(string)-2;
    ret = FUNC5(subkey, "stringtest", 0, REG_SZ, (BYTE*)string, insize);
    FUNC8(ret == ERROR_SUCCESS, "RegSetValueExA failed: %d\n", ret);
    outsize=0;
    ret = FUNC4(subkey, "stringtest", NULL, NULL, NULL, &outsize);
    FUNC8(ret == ERROR_SUCCESS, "RegQueryValueExA failed: %d\n", ret);
    FUNC8(outsize == insize, "wrong size %u != %u\n", outsize, insize);

    /* RegQueryValueExA may return a string with no trailing '\0' */
    outsize=insize;
    FUNC7(buffer, 0xbd, sizeof(buffer));
    ret = FUNC4(subkey, "stringtest", NULL, NULL, buffer, &outsize);
    FUNC8(ret == ERROR_SUCCESS, "RegQueryValueExA failed: %d\n", ret);
    FUNC8(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    FUNC8(FUNC6(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       FUNC10((char*)buffer, outsize), outsize, string);
    FUNC8(buffer[insize] == 0xbd, "buffer overflow at %u %02x\n", insize, buffer[insize]);

    /* RegQueryValueExA adds a trailing '\0' if there is room */
    outsize=insize+1;
    FUNC7(buffer, 0xbd, sizeof(buffer));
    ret = FUNC4(subkey, "stringtest", NULL, NULL, buffer, &outsize);
    FUNC8(ret == ERROR_SUCCESS, "RegQueryValueExA failed: %d\n", ret);
    FUNC8(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    FUNC8(FUNC6(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       FUNC10((char*)buffer, outsize), outsize, string);
    FUNC8(buffer[insize] == 0, "buffer overflow at %u %02x\n", insize, buffer[insize]);

    /* RegEnumValueA may return a string with no trailing '\0' */
    outsize=insize;
    FUNC7(buffer, 0xbd, sizeof(buffer));
    nsize=sizeof(name);
    ret = FUNC3(subkey, 0, name, &nsize, NULL, NULL, buffer, &outsize);
    FUNC8(ret == ERROR_SUCCESS, "RegEnumValueA failed: %d\n", ret);
    FUNC8(FUNC9(name, "stringtest") == 0, "wrong name: %s\n", name);
    FUNC8(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    FUNC8(FUNC6(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       FUNC10((char*)buffer, outsize), outsize, string);
    FUNC8(buffer[insize] == 0xbd, "buffer overflow at %u %02x\n", insize, buffer[insize]);

    /* RegEnumValueA adds a trailing '\0' if there is room */
    outsize=insize+1;
    FUNC7(buffer, 0xbd, sizeof(buffer));
    nsize=sizeof(name);
    ret = FUNC3(subkey, 0, name, &nsize, NULL, NULL, buffer, &outsize);
    FUNC8(ret == ERROR_SUCCESS, "RegEnumValueA failed: %d\n", ret);
    FUNC8(FUNC9(name, "stringtest") == 0, "wrong name: %s\n", name);
    FUNC8(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    FUNC8(FUNC6(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       FUNC10((char*)buffer, outsize), outsize, string);
    FUNC8(buffer[insize] == 0, "buffer overflow at %u %02x\n", insize, buffer[insize]);

    FUNC2(subkey, "");
    FUNC0(subkey);
}