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
typedef  int DWORD ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,int,int,int) ; 

__attribute__((used)) static WCHAR *FUNC2( DWORD addr )
{
    static const WCHAR fmtW[] = {'%','u','.','%','u','.','%','u','.','%','u',0};
    WCHAR *ret;

    if (!(ret = FUNC0( sizeof("ddd.ddd.ddd.ddd") * sizeof(WCHAR) ))) return NULL;
    FUNC1( ret, fmtW, (addr >> 24) & 0xff, (addr >> 16) & 0xff, (addr >> 8) & 0xff, addr & 0xff );
    return ret;
}