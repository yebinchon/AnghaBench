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
struct hostent {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 char* WSAEFAULT ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hostent* FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    struct hostent *he;
    char name[256];
    int ret, len;

    FUNC1(0xdeadbeef);
    ret = FUNC3(NULL, 256);
    FUNC4(ret == -1, "gethostname() returned %d\n", ret);
    FUNC4(FUNC0() == WSAEFAULT, "gethostname with null buffer "
            "failed with %d, expected %d\n", FUNC0(), WSAEFAULT);

    ret = FUNC3(name, sizeof(name));
    FUNC4(ret == 0, "gethostname() call failed: %d\n", FUNC0());
    he = FUNC2(name);
    FUNC4(he != NULL, "gethostbyname(\"%s\") failed: %d\n", name, FUNC0());

    len = FUNC7(name);
    FUNC1(0xdeadbeef);
    FUNC6(name, "deadbeef");
    ret = FUNC3(name, len);
    FUNC4(ret == -1, "gethostname() returned %d\n", ret);
    FUNC4(!FUNC5(name, "deadbeef"), "name changed unexpected!\n");
    FUNC4(FUNC0() == WSAEFAULT, "gethostname with insufficient length "
            "failed with %d, expected %d\n", FUNC0(), WSAEFAULT);

    len++;
    ret = FUNC3(name, len);
    FUNC4(ret == 0, "gethostname() call failed: %d\n", FUNC0());
    he = FUNC2(name);
    FUNC4(he != NULL, "gethostbyname(\"%s\") failed: %d\n", name, FUNC0());
}