#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int val; scalar_t__* encoded; } ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* enumeratedTypes ; 
 TYPE_1__* enums ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (size_t,TYPE_1__,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,size_t*) ; 

__attribute__((used)) static void FUNC4(DWORD dwEncoding)
{
    DWORD i, j;

    for (i = 0; i < FUNC0(enumeratedTypes); i++)
    {
        for (j = 0; j < FUNC0(enums); j++)
        {
            BOOL ret;
            DWORD bufSize = sizeof(int);
            int val;

            ret = FUNC3(dwEncoding, enumeratedTypes[i],
             enums[j].encoded, enums[j].encoded[1] + 2, 0, NULL,
             &val, &bufSize);
            FUNC2(ret, "CryptDecodeObjectEx failed: %08x\n", FUNC1());
            FUNC2(bufSize == sizeof(int),
             "Got unexpected size %d for enumerated\n", bufSize);
            FUNC2(val == enums[j].val, "Unexpected value %d, expected %d\n",
             val, enums[j].val);
        }
    }
}