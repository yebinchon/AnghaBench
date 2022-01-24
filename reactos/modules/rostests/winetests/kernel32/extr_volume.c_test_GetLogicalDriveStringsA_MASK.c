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
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (int,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    UINT size, size2;
    char *buf, *ptr;

    FUNC3( &pGetLogicalDriveStringsA != NULL, "GetLogicalDriveStringsA not available\n");
    if(!&pGetLogicalDriveStringsA) {
        return;
    }

    size = FUNC4(0, NULL);
    FUNC3(size%4 == 1, "size = %d\n", size);

    buf = FUNC1(FUNC0(), 0, size);

    *buf = 0;
    size2 = FUNC4(2, buf);
    FUNC3(size2 == size, "size2 = %d\n", size2);
    FUNC3(!*buf, "buf changed\n");

    size2 = FUNC4(size, buf);
    FUNC3(size2 == size-1, "size2 = %d\n", size2);

    for(ptr = buf; ptr < buf+size2; ptr += 4) {
        FUNC3(('A' <= *ptr && *ptr <= 'Z'), "device name '%c' is not uppercase\n", *ptr);
        FUNC3(ptr[1] == ':', "ptr[1] = %c, expected ':'\n", ptr[1]);
        FUNC3(ptr[2] == '\\', "ptr[2] = %c expected '\\'\n", ptr[2]);
        FUNC3(!ptr[3], "ptr[3] = %c expected nullbyte\n", ptr[3]);
    }
    FUNC3(!*ptr, "buf[size2] is not nullbyte\n");

    FUNC2(FUNC0(), 0, buf);
}