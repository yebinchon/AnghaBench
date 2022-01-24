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
typedef  int /*<<< orphan*/  buff ;
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    char buff[129];
    unsigned int i;

    if (!&pCbOfEncoded)
    {
        FUNC3("CbOfEncoded is not available\n");
        return;
    }

    for (i = 0; i < sizeof(buff) - 1; i++)
    {
        ULONG ulRet, ulExpected = (((i | 3) >> 2) + 1) * 3;

        FUNC0(buff, '\0', sizeof(buff));
        FUNC0(buff, '?', i);
        ulRet = FUNC2(buff);
        FUNC1(ulRet == ulExpected,
           "CbOfEncoded(length %d): expected %d, got %d\n",
           i, ulExpected, ulRet);
    }
}