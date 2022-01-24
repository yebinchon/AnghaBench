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
typedef  int /*<<< orphan*/ * SC_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  SERVICE_DEMAND_START ; 
 int /*<<< orphan*/  SERVICE_ERROR_IGNORE ; 
 int /*<<< orphan*/  SERVICE_WIN32_OWN_PROCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  scm_handle ; 
 char* service_name ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static SC_HANDLE FUNC10(const char *test_name)
{
    char service_cmd[MAX_PATH+150], *ptr;
    SC_HANDLE service;

    ptr = service_cmd + FUNC3(NULL, service_cmd, MAX_PATH);

    /* If the file doesn't exist, assume we're using built-in exe and append .so to the path */
    if(FUNC1(service_cmd) == INVALID_FILE_ATTRIBUTES) {
        FUNC7(ptr, ".so");
        ptr += 3;
    }

    FUNC7(ptr, " service ");
    ptr += FUNC8(ptr);
    FUNC6(ptr, "%s ", test_name);
    ptr += FUNC8(ptr);
    FUNC7(ptr, service_name);

    FUNC9("service_cmd \"%s\"\n", service_cmd);

    service = FUNC0(scm_handle, service_name, service_name, GENERIC_ALL,
                             SERVICE_WIN32_OWN_PROCESS, SERVICE_DEMAND_START, SERVICE_ERROR_IGNORE,
                             service_cmd, NULL, NULL, NULL, NULL, NULL);
    if(!service && FUNC2() == ERROR_ACCESS_DENIED) {
        FUNC5("Not enough access right to create service\n");
        return NULL;
    }

    FUNC4(service != NULL, "CreateService failed: %u\n", FUNC2());
    return service;
}