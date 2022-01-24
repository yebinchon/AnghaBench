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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  DataItem1 ; 
 int /*<<< orphan*/  DataItem2 ; 
 int /*<<< orphan*/  DataItem3 ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

int FUNC26(int argc, char *argv[])
{
    char* str = "defaultstring";

    if (argc > 2)
        str = argv[1];

    FUNC24(FUNC0(), 0);
    FUNC24(FUNC1(str), 1);
    FUNC24(FUNC2(str), 1);
    FUNC24(FUNC3(str), 0x10001);

    FUNC24(FUNC18(), 0x10);
    FUNC24(FUNC19(str), 0x11);
    FUNC24(FUNC20(str), 0x11);
    FUNC24(FUNC21(str), 0x10011);
#ifdef _M_IX86
    ok_int(StdcallFunc4(str), 0x21);
#endif
    FUNC24(FUNC23(str), 0x10021);

#ifdef _M_IX86
    ok_int(DecoratedStdcallFunc1(str), 0x21);
    ok_int(DecoratedStdcallFunc2(str), 0x11);
    //ok_int(DecoratedStdcallFunc3(str), 11);
    ok_int(DecoratedStdcallFunc4(str), 0x21);
    ok_int(DecoratedStdcallFunc5(str), 0x10021);
#endif
    FUNC24(FUNC12(), 0x30);
    FUNC24(FUNC13(str), 0x31);
    FUNC24(FUNC14(str), 0x31);
    FUNC24(FUNC15(str), 0x10031);
#ifdef _M_IX86
    ok_int(FastcallFunc4(str), 0x42);
    ok_int(FastcallFunc5(str), 0x10041);
#endif
#ifdef _M_IX86
    ok_int(DecoratedFastcallFunc1(str), 0x42);
    ok_int(DecoratedFastcallFunc2(str), 0x31);
    //ok_int(DecoratedFastcallFunc3(str), 11);
    ok_int(DecoratedFastcallFunc4(str), 0x42);
    ok_int(DecoratedFastcallFunc5(str), 0x10041);
#endif
    FUNC24(DataItem1, 0x51);
    FUNC24(DataItem2, 0x51);
    FUNC24(DataItem3, 0x10051);

    FUNC25("done.\n");

    return 0;
}