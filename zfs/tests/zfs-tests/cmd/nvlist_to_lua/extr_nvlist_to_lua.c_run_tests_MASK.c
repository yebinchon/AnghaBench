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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int uchar_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int int8_t ;
typedef  int int64_t ;
typedef  int int32_t ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,char* const*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char const*,int*,int) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 char* FUNC28 (int) ; 
 int /*<<< orphan*/ * nvl ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC31(void)
{
	const char *key = "key";

	/* Note: maximum nvlist key length is 32KB */
	int len = 1024 * 31;
	char *bigstring = FUNC28(len);
	for (int i = 0; i < len; i++)
		bigstring[i] = 'a' + i % 26;
	bigstring[len - 1] = '\0';

	nvl = FUNC25();

	FUNC0(nvl, key);
	FUNC30("boolean", B_TRUE, B_FALSE);

	FUNC2(nvl, key, B_TRUE);
	FUNC30("boolean_value", B_FALSE, B_FALSE);

	FUNC3(nvl, key, 1);
	FUNC30("byte", B_FALSE, B_FALSE);

	FUNC11(nvl, key, 1);
	FUNC30("int8", B_FALSE, B_FALSE);

	FUNC23(nvl, key, 1);
	FUNC30("uint8", B_FALSE, B_FALSE);

	FUNC5(nvl, key, 1);
	FUNC30("int16", B_FALSE, B_FALSE);

	FUNC17(nvl, key, 1);
	FUNC30("uint16", B_FALSE, B_FALSE);

	FUNC7(nvl, key, 1);
	FUNC30("int32", B_FALSE, B_FALSE);

	FUNC19(nvl, key, 1);
	FUNC30("uint32", B_FALSE, B_FALSE);

	FUNC9(nvl, key, 1);
	FUNC30("int64", B_TRUE, B_TRUE);

	FUNC21(nvl, key, 1);
	FUNC30("uint64", B_FALSE, B_FALSE);

	FUNC15(nvl, key, "1");
	FUNC30("string", B_TRUE, B_TRUE);


	{
		nvlist_t *val = FUNC25();
		FUNC15(val, "subkey", "subvalue");
		FUNC13(nvl, key, val);
		FUNC26(val);
		FUNC30("nvlist", B_TRUE, B_TRUE);
	}
	{
		boolean_t val[2] = { B_FALSE, B_TRUE };
		FUNC1(nvl, key, val, 2);
		FUNC30("boolean_array", B_FALSE, B_FALSE);
	}
	{
		uchar_t val[2] = { 0, 1 };
		FUNC4(nvl, key, val, 2);
		FUNC30("byte_array", B_FALSE, B_FALSE);
	}
	{
		int8_t val[2] = { 0, 1 };
		FUNC12(nvl, key, val, 2);
		FUNC30("int8_array", B_FALSE, B_FALSE);
	}
	{
		uint8_t val[2] = { 0, 1 };
		FUNC24(nvl, key, val, 2);
		FUNC30("uint8_array", B_FALSE, B_FALSE);
	}
	{
		int16_t val[2] = { 0, 1 };
		FUNC6(nvl, key, val, 2);
		FUNC30("int16_array", B_FALSE, B_FALSE);
	}
	{
		uint16_t val[2] = { 0, 1 };
		FUNC18(nvl, key, val, 2);
		FUNC30("uint16_array", B_FALSE, B_FALSE);
	}
	{
		int32_t val[2] = { 0, 1 };
		FUNC8(nvl, key, val, 2);
		FUNC30("int32_array", B_FALSE, B_FALSE);
	}
	{
		uint32_t val[2] = { 0, 1 };
		FUNC20(nvl, key, val, 2);
		FUNC30("uint32_array", B_FALSE, B_FALSE);
	}
	{
		int64_t val[2] = { 0, 1 };
		FUNC10(nvl, key, val, 2);
		FUNC30("int64_array", B_TRUE, B_FALSE);
	}
	{
		uint64_t val[2] = { 0, 1 };
		FUNC22(nvl, key, val, 2);
		FUNC30("uint64_array", B_FALSE, B_FALSE);
	}
	{
		char *const val[2] = { "0", "1" };
		FUNC16(nvl, key, val, 2);
		FUNC30("string_array", B_TRUE, B_FALSE);
	}
	{
		nvlist_t *val[2];
		val[0] = FUNC25();
		FUNC15(val[0], "subkey", "subvalue");
		val[1] = FUNC25();
		FUNC15(val[1], "subkey2", "subvalue2");
		FUNC14(nvl, key, val, 2);
		FUNC26(val[0]);
		FUNC26(val[1]);
		FUNC30("nvlist_array", B_FALSE, B_FALSE);
	}
	{
		FUNC15(nvl, bigstring, "1");
		FUNC30("large_key", B_TRUE, B_TRUE);
	}
	{
		FUNC15(nvl, key, bigstring);
		FUNC30("large_value", B_TRUE, B_TRUE);
	}
	{
		for (int i = 0; i < 1024; i++) {
			char buf[32];
			(void) FUNC29(buf, sizeof (buf), "key-%u", i);
			FUNC9(nvl, buf, i);
		}
		FUNC30("many_keys", B_TRUE, B_TRUE);
	}
#ifndef __sparc__
	{
		for (int i = 0; i < 10; i++) {
			nvlist_t *newval = FUNC25();
			FUNC13(newval, "key", nvl);
			FUNC26(nvl);
			nvl = newval;
		}
		FUNC30("deeply_nested_pos", B_TRUE, B_TRUE);
	}
	{
		for (int i = 0; i < 90; i++) {
			nvlist_t *newval = FUNC25();
			FUNC13(newval, "key", nvl);
			FUNC26(nvl);
			nvl = newval;
		}
		FUNC30("deeply_nested_neg", B_FALSE, B_FALSE);
	}
#endif
	FUNC27(bigstring);
	FUNC26(nvl);
}