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
typedef  char* LPWSTR ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static LPWSTR FUNC3(LPWSTR buf, int field)
{
    LPWSTR beg, end;
    int i = 1;

    if (field == 0)
        return FUNC2(buf);

    beg = buf;
    while ((end = FUNC1(beg, ',')) && i < field)
    {
        beg = end + 1;
        while (*beg == ' ')
            beg++;

        i++;
    }

    end = FUNC1(beg, ',');
    if (!end)
        end = beg + FUNC0(beg);

    *end = '\0';
    return FUNC2(beg);
}