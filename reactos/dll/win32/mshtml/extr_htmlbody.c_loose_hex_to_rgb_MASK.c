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
typedef  char WCHAR ;

/* Variables and functions */
 int FUNC0 (char const*,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const WCHAR *hex)
{
    int len, dpc;

    len = FUNC2(hex);
    if(*hex == '#') {
        hex++;
        len--;
    }
    if(len <= 3)
        return 0;

    dpc = FUNC1(len/3 + (len%3 ? 1 : 0), 4);
    return (FUNC0(hex, dpc) << 16)
        | (FUNC0(hex+dpc, dpc) << 8)
        | FUNC0(hex+2*dpc, dpc);
}