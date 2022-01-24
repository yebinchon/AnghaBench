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
typedef  int /*<<< orphan*/  buffer2 ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char FUNC9 (char) ; 

__attribute__((used)) static void FUNC10(void)
{
    char drivestr[] = "a:";
    char *p, *buffer, buffer2[2000];
    DWORD ret, ret2, buflen=32768;
    BOOL found = FALSE;

    /* callers must guess the buffer size */
    FUNC5(0xdeadbeef);
    ret = FUNC4( NULL, NULL, 0 );
    FUNC6(!ret && FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "QueryDosDeviceA(no buffer): returned %u, le=%u\n", ret, FUNC0());

    buffer = FUNC2( FUNC1(), 0, buflen );
    FUNC5(0xdeadbeef);
    ret = FUNC4( NULL, buffer, buflen );
    FUNC6((ret && FUNC0() != ERROR_INSUFFICIENT_BUFFER),
        "QueryDosDeviceA failed to return list, last error %u\n", FUNC0());

    if (ret && FUNC0() != ERROR_INSUFFICIENT_BUFFER) {
        p = buffer;
        for (;;) {
            if (!FUNC7(p)) break;
            ret2 = FUNC4( p, buffer2, sizeof(buffer2) );
            FUNC6(ret2, "QueryDosDeviceA failed to return current mapping for %s, last error %u\n", p, FUNC0());
            p += FUNC7(p) + 1;
            if (ret <= (p-buffer)) break;
        }
    }

    for (;drivestr[0] <= 'z'; drivestr[0]++) {
        /* Older W2K fails with ERROR_INSUFFICIENT_BUFFER when buflen is > 32767 */
        ret = FUNC4( drivestr, buffer, buflen - 1);
        FUNC6(ret || FUNC0() == ERROR_FILE_NOT_FOUND,
            "QueryDosDeviceA failed to return current mapping for %s, last error %u\n", drivestr, FUNC0());
        if(ret) {
            for (p = buffer; *p; p++) *p = FUNC9(*p);
            if (FUNC8(buffer, "HARDDISK") || FUNC8(buffer, "RAMDISK")) found = TRUE;
        }
    }
    FUNC6(found, "expected at least one devicename to contain HARDDISK or RAMDISK\n");
    FUNC3( FUNC1(), 0, buffer );
}