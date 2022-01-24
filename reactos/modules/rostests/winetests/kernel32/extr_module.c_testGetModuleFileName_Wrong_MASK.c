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
typedef  int /*<<< orphan*/  bufW ;
typedef  int /*<<< orphan*/  bufA ;
typedef  char WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,char*,int) ; 
 scalar_t__ FUNC1 (void*,char*,int) ; 
 int MAX_PATH ; 
 scalar_t__ is_unicode_enabled ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    char        bufA[MAX_PATH];
    WCHAR       bufW[MAX_PATH];

    /* test wrong handle */
    if (is_unicode_enabled)
    {
        bufW[0] = '*';
        FUNC2(FUNC1((void*)0xffffffff, bufW, sizeof(bufW) / sizeof(WCHAR)) == 0, "Unexpected success in module handle\n");
        FUNC2(bufW[0] == '*', "When failing, buffer shouldn't be written to\n");
    }

    bufA[0] = '*';
    FUNC2(FUNC0((void*)0xffffffff, bufA, sizeof(bufA)) == 0, "Unexpected success in module handle\n");
    FUNC2(bufA[0] == '*', "When failing, buffer shouldn't be written to\n");
}