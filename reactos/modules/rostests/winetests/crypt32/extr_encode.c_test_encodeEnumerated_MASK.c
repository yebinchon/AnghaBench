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
struct TYPE_5__ {int val; int* encoded; } ;
typedef  size_t DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CRYPT_ENCODE_ALLOC_FLAG ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 TYPE_1__* enumeratedTypes ; 
 TYPE_1__* enums ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int FUNC5 (size_t,TYPE_1__,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int**,size_t*) ; 

__attribute__((used)) static void FUNC6(DWORD dwEncoding)
{
    DWORD i, j;

    for (i = 0; i < FUNC0(enumeratedTypes); i++)
    {
        for (j = 0; j < FUNC0(enums); j++)
        {
            BOOL ret;
            BYTE *buf = NULL;
            DWORD bufSize = 0;

            ret = FUNC5(dwEncoding, enumeratedTypes[i],
             &enums[j].val, CRYPT_ENCODE_ALLOC_FLAG, NULL, &buf,
             &bufSize);
            FUNC4(ret, "CryptEncodeObjectEx failed: %d\n", FUNC1());
            if (ret)
            {
                FUNC4(buf[0] == 0xa,
                 "Got unexpected type %d for enumerated (expected 0xa)\n",
                 buf[0]);
                FUNC4(buf[1] == enums[j].encoded[1],
                 "Got length %d, expected %d\n", buf[1], enums[j].encoded[1]);
                FUNC4(!FUNC3(buf + 1, enums[j].encoded + 1,
                 enums[j].encoded[1] + 1),
                 "Encoded value of 0x%08x didn't match expected\n",
                 enums[j].val);
                FUNC2(buf);
            }
        }
    }
}