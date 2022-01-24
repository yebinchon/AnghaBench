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
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 

__attribute__((used)) static BOOL FUNC4(WCHAR *event, const WCHAR **args)
{
    WCHAR *ptr;

    FUNC0("%s\n", FUNC1(event));

    for(ptr = event; FUNC2(*ptr); ptr++);
    if(!*ptr) {
        *args = NULL;
        return TRUE;
    }

    if(*ptr != '(')
        return FALSE;

    *ptr++ = 0;
    *args = ptr;
    while(FUNC2(*ptr) || FUNC3(*ptr) || *ptr == ',')
        ptr++;

    if(*ptr != ')')
        return FALSE;

    *ptr++ = 0;
    return !*ptr;
}