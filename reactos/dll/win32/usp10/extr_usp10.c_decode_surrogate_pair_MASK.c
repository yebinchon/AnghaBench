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
typedef  int WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const,int const,int) ; 

__attribute__((used)) static DWORD FUNC2(const WCHAR *str, unsigned int index, unsigned int end)
{
    if (index < end-1 && FUNC0(str[index],str[index+1]))
    {
        DWORD ch = 0x10000 + ((str[index] - 0xd800) << 10) + (str[index+1] - 0xdc00);
        FUNC1("Surrogate Pair %x %x => %x\n",str[index], str[index+1], ch);
        return ch;
    }
    return 0;
}