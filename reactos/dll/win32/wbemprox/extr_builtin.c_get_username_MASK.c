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
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static WCHAR *FUNC3(void)
{
    WCHAR *ret;
    DWORD compsize, usersize;
    DWORD size;

    compsize = 0;
    FUNC0( NULL, &compsize );
    usersize = 0;
    FUNC1( NULL, &usersize );
    size = compsize + usersize; /* two null terminators account for the \ */
    if (!(ret = FUNC2( size * sizeof(WCHAR) ))) return NULL;
    FUNC0( ret, &compsize );
    ret[compsize] = '\\';
    FUNC1( ret + compsize + 1, &usersize );
    return ret;
}