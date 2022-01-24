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
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (unsigned char*,unsigned char*,unsigned char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    unsigned char hash[0x10] = {
        0xff, 0x37, 0x50, 0xbc, 0xc2, 0xb2, 0x24, 0x12,
        0xc2, 0x26, 0x5b, 0x23, 0x73, 0x4e, 0x0d, 0xac };
    unsigned char challenge[8] = {
        0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef };
    unsigned char expected[0x18] = {
        0xc3, 0x37, 0xcd, 0x5c, 0xbd, 0x44, 0xfc, 0x97,
        0x82, 0xa6, 0x67, 0xaf, 0x6d, 0x42, 0x7c, 0x6d,
        0xe6, 0x7c, 0x20, 0xc2, 0xd3, 0xe7, 0x7c, 0x56 };
    unsigned char output[0x18];
    int r;

    FUNC1(output, 0, sizeof output);
    r = FUNC3(challenge, hash, output);
    FUNC2( r == STATUS_SUCCESS, "wrong error code\n");
    FUNC2(!FUNC0(output, expected, sizeof expected), "response wrong\n");
}