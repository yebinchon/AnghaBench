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
 unsigned char* FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4( void)
{
    unsigned char str1[]="cabernet";
    unsigned char str2[]="shiraz";
    unsigned char set[]="abc";
    unsigned char empty[]="";
    unsigned char full[]="abcenrt";
    unsigned char mbstr[]=" 2019\x94\x4e" "6\x8c\x8e" "29\x93\xfa";
    unsigned char mbset1[]="0123456789 \x94\x4e";
    unsigned char mbset2[]=" \x94\x4e\x8c\x8e";
    unsigned char* ret;
    int cp = FUNC0();

    ret=FUNC1( str1, set);
    FUNC3( ret[0]=='e', "_mbsspnp returns %c should be e\n", ret[0]);
    ret=FUNC1( str2, set);
    FUNC3( ret[0]=='s', "_mbsspnp returns %c should be s\n", ret[0]);
    ret=FUNC1( str1, empty);
    FUNC3( ret[0]=='c', "_mbsspnp returns %c should be c\n", ret[0]);
    ret=FUNC1( str1, full);
    FUNC3( ret==NULL, "_mbsspnp returns %p should be NULL\n", ret);

    FUNC2( 932);
    ret=FUNC1( mbstr, mbset1);
    FUNC3( ret==mbstr+8, "_mbsspnp returns %p should be %p\n", ret, mbstr+8);
    ret=FUNC1( mbstr, mbset2);
    FUNC3( ret==mbstr+1, "_mbsspnp returns %p should be %p\n", ret, mbstr+1);
    ret=FUNC1( mbstr+8, mbset1);
    FUNC3( ret==mbstr+8, "_mbsspnp returns %p should be %p\n", ret, mbstr+8);
    ret=FUNC1( mbstr+8, mbset2);
    FUNC3( ret==mbstr+10, "_mbsspnp returns %p should be %p\n", ret, mbstr+10);

    FUNC2( cp);
}