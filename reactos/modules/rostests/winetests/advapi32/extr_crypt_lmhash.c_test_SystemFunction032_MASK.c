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
struct ustring {unsigned char* Buffer; int Length; int MaximumLength; } ;

/* Variables and functions */
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct ustring*,struct ustring*) ; 

__attribute__((used)) static void FUNC3(void)
{
    struct ustring key, data;
    unsigned char szKey[] = { 'f','o','o',0 };
    unsigned char szData[8] = { 'b','a','r',0 };
    unsigned char expected[] = {0x28, 0xb9, 0xf8, 0xe1};
    int r;

    /* crashes:    pSystemFunction032(NULL,NULL); */

    key.Buffer = szKey;
    key.Length = sizeof szKey;
    key.MaximumLength = key.Length;

    data.Buffer = szData;
    data.Length = 4;
    data.MaximumLength = 8;

    r = FUNC2(&data, &key);
    FUNC1(r == STATUS_SUCCESS, "function failed\n");

    FUNC1(!FUNC0(expected, data.Buffer, data.Length), "wrong result\n");
}