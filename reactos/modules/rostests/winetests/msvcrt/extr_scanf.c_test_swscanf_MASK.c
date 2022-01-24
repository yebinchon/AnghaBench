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
typedef  char wchar_t ;
typedef  char WCHAR ;

/* Variables and functions */
 scalar_t__ WEOF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char,...) ; 
 int FUNC2 (char*,char const*,...) ; 

__attribute__((used)) static void FUNC3( void )
{
    wchar_t buffer[100];
    int result, ret;
    static const WCHAR formatd[] = {'%','d',0};
    const WCHAR format2[] = {'a',0x1234,'%',0x1234,'%','c',0};
    WCHAR c;

    /* check WEOF */
    /* WEOF is an unsigned short -1 but swscanf returns int
       so it should be sign-extended */
    buffer[0] = 0;
    ret = FUNC2(buffer, formatd, &result);
    /* msvcrt returns 0 but should return -1 (later versions do) */
    FUNC1( ret == (short)WEOF || FUNC0(ret == 0),
        "swscanf returns %x instead of %x\n", ret, WEOF );

    buffer[0] = 'a';
    buffer[1] = 0x1234;
    buffer[2] = 0x1234;
    buffer[3] = 'b';
    ret = FUNC2(buffer, format2, &c);
    FUNC1(ret == 1, "swscanf returned %d\n", ret);
    FUNC1(c == 'b', "c = %x\n", c);
}