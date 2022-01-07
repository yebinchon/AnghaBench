
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;


 int * CreateServiceA (int ,char*,char*,int ,int ,int ,int ,char*,int *,int *,int *,int *,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int GENERIC_ALL ;
 scalar_t__ GetFileAttributesA (char*) ;
 scalar_t__ GetLastError () ;
 int GetModuleFileNameA (int *,char*,int ) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int SERVICE_DEMAND_START ;
 int SERVICE_ERROR_IGNORE ;
 int SERVICE_WIN32_OWN_PROCESS ;
 int ok (int ,char*,scalar_t__) ;
 int scm_handle ;
 char* service_name ;
 int skip (char*) ;
 int sprintf (char*,char*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trace (char*,char*) ;

__attribute__((used)) static SC_HANDLE register_service(const char *test_name)
{
    char service_cmd[MAX_PATH+150], *ptr;
    SC_HANDLE service;

    ptr = service_cmd + GetModuleFileNameA(((void*)0), service_cmd, MAX_PATH);


    if(GetFileAttributesA(service_cmd) == INVALID_FILE_ATTRIBUTES) {
        strcpy(ptr, ".so");
        ptr += 3;
    }

    strcpy(ptr, " service ");
    ptr += strlen(ptr);
    sprintf(ptr, "%s ", test_name);
    ptr += strlen(ptr);
    strcpy(ptr, service_name);

    trace("service_cmd \"%s\"\n", service_cmd);

    service = CreateServiceA(scm_handle, service_name, service_name, GENERIC_ALL,
                             SERVICE_WIN32_OWN_PROCESS, SERVICE_DEMAND_START, SERVICE_ERROR_IGNORE,
                             service_cmd, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if(!service && GetLastError() == ERROR_ACCESS_DENIED) {
        skip("Not enough access right to create service\n");
        return ((void*)0);
    }

    ok(service != ((void*)0), "CreateService failed: %u\n", GetLastError());
    return service;
}
