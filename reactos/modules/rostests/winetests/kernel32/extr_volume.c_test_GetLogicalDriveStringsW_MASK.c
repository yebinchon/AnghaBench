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
typedef  int UINT ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    UINT size, size2;
    WCHAR *buf, *ptr;

    FUNC5( &pGetLogicalDriveStringsW != NULL, "GetLogicalDriveStringsW not available\n");
    if(!&pGetLogicalDriveStringsW) {
        return;
    }

    FUNC4(0xdeadbeef);
    size = FUNC6(0, NULL);
    if (size == 0 && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED) {
        FUNC7("GetLogicalDriveStringsW not implemented\n");
        return;
    }
    FUNC5(size%4 == 1, "size = %d\n", size);

    buf = FUNC2(FUNC1(), 0, size*sizeof(WCHAR));

    *buf = 0;
    size2 = FUNC6(2, buf);
    FUNC5(size2 == size, "size2 = %d\n", size2);
    FUNC5(!*buf, "buf changed\n");

    size2 = FUNC6(size, buf);
    FUNC5(size2 == size-1, "size2 = %d\n", size2);

    for(ptr = buf; ptr < buf+size2; ptr += 4) {
        FUNC5('A' <= *ptr && *ptr <= 'Z', "device name '%c' is not uppercase\n", *ptr);
        FUNC5(ptr[1] == ':', "ptr[1] = %c, expected ':'\n", ptr[1]);
        FUNC5(ptr[2] == '\\', "ptr[2] = %c expected '\\'\n", ptr[2]);
        FUNC5(!ptr[3], "ptr[3] = %c expected nullbyte\n", ptr[3]);
    }
    FUNC5(!*ptr, "buf[size2] is not nullbyte\n");

    FUNC3(FUNC1(), 0, buf);
}