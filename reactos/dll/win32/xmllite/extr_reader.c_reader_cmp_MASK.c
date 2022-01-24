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
typedef  int /*<<< orphan*/  xmlreader ;
typedef  scalar_t__ WCHAR ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(xmlreader *reader, const WCHAR *str)
{
    int i=0;
    const WCHAR *ptr = FUNC0(reader);
    while (str[i])
    {
        if (!ptr[i])
        {
            FUNC1(reader);
            ptr = FUNC0(reader);
        }
        if (str[i] != ptr[i])
            return ptr[i] - str[i];
        i++;
    }
    return 0;
}