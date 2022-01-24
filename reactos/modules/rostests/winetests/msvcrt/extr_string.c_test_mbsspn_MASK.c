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
 int FUNC0 () ; 
 int FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4( void)
{
    unsigned char str1[]="cabernet";
    unsigned char str2[]="shiraz";
    unsigned char set[]="abc";
    unsigned char empty[]="";
    unsigned char mbstr[]=" 2019\x94\x4e" "6\x8c\x8e" "29\x93\xfa";
    unsigned char mbset1[]="0123456789 \x94\x4e";
    unsigned char mbset2[]=" \x94\x4e\x8c\x8e";
    unsigned char mbset3[]="\x8e";
    int ret, cp = FUNC0();

    ret=FUNC1( str1, set);
    FUNC3( ret==3, "_mbsspn returns %d should be 3\n", ret);
    ret=FUNC1( str2, set);
    FUNC3( ret==0, "_mbsspn returns %d should be 0\n", ret);
    ret=FUNC1( str1, empty);
    FUNC3( ret==0, "_mbsspn returns %d should be 0\n", ret);

    FUNC2( 932);
    ret=FUNC1( mbstr, mbset1);
    FUNC3( ret==8, "_mbsspn returns %d should be 8\n", ret);
    ret=FUNC1( mbstr, mbset2);
    FUNC3( ret==1, "_mbsspn returns %d should be 1\n", ret);
    ret=FUNC1( mbstr+8, mbset1);
    FUNC3( ret==0, "_mbsspn returns %d should be 0\n", ret);
    ret=FUNC1( mbstr+8, mbset2);
    FUNC3( ret==2, "_mbsspn returns %d should be 2\n", ret);
    ret=FUNC1( mbstr, mbset3);
    FUNC3( ret==14, "_mbsspn returns %d should be 14\n", ret);

    FUNC2( cp);
}