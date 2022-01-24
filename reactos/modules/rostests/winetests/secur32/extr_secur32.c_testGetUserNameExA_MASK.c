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
typedef  int /*<<< orphan*/  name ;
typedef  int ULONG ;
typedef  size_t UINT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_NONE_MAPPED ; 
 scalar_t__ ERROR_NO_SUCH_USER ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ NameDnsDomain ; 
 scalar_t__ NameSamCompatible ; 
 scalar_t__ NameUnknown ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__* formats ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (scalar_t__,char*,int*) ; 

__attribute__((used)) static void FUNC6(void)
{
    char name[256];
    ULONG size;
    BOOLEAN rc;
    UINT i;

    for (i = 0; i < FUNC0(formats); i++) {
        size = sizeof(name);
        FUNC2(name, sizeof(name));
        rc = FUNC5(formats[i], name, &size);
        FUNC4(rc ||
           (formats[i] == NameUnknown &&
            FUNC1() == ERROR_NO_SUCH_USER) ||
           FUNC1() == ERROR_NONE_MAPPED ||
           FUNC3(formats[i] == NameDnsDomain &&
                  FUNC1() == ERROR_INVALID_PARAMETER),
           "GetUserNameExW(%d) failed: %d\n",
           formats[i], FUNC1());
    }

    if (0) /* Crashes on Windows */
        FUNC5(NameSamCompatible, NULL, NULL);

    size = 0;
    rc = FUNC5(NameSamCompatible, NULL, &size);
    FUNC4(! rc && FUNC1() == ERROR_MORE_DATA, "Expected fail with ERROR_MORE_DATA, got %d with %u\n", rc, FUNC1());
    FUNC4(size != 0, "Expected size to be set to required size\n");

    if (0) /* Crashes on Windows with big enough size */
    {
        /* Returned size is already big enough */
        FUNC5(NameSamCompatible, NULL, &size);
    }

    size = 0;
    rc = FUNC5(NameSamCompatible, name, &size);
    FUNC4(! rc && FUNC1() == ERROR_MORE_DATA, "Expected fail with ERROR_MORE_DATA, got %d with %u\n", rc, FUNC1());
    FUNC4(size != 0, "Expected size to be set to required size\n");
    size = 1;
    name[0] = 0xff;
    rc = FUNC5(NameSamCompatible, name, &size);
    FUNC4(! rc && FUNC1() == ERROR_MORE_DATA, "Expected fail with ERROR_MORE_DATA, got %d with %u\n", rc, FUNC1());
    FUNC4(1 < size, "Expected size to be set to required size\n");
    FUNC4(name[0] == (char) 0xff, "Expected unchanged buffer\n");
}