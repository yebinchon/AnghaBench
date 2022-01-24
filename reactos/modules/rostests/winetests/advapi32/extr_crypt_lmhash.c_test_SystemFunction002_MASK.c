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
    /* reverse of SystemFunction001 */
    unsigned char key[8] = { 0xff, 0x37, 0x50, 0xbc, 0xc2, 0xb2, 0x24, 0 };
    unsigned char expected[8] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef };
    unsigned char data[8] = { 0xc3, 0x37, 0xcd, 0x5c, 0xbd, 0x44, 0xfc, 0x97 };
    unsigned char output[8];
    int r;

    FUNC1(output, 0, sizeof output);
    r = FUNC3(data, key, output);
    FUNC2(r == STATUS_SUCCESS, "function failed\n");
    FUNC2(!FUNC0(output, expected, sizeof expected), "response wrong\n");
}