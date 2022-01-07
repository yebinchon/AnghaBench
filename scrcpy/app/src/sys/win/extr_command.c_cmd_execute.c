
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int si ;
typedef enum process_result { ____Placeholder_process_result } process_result ;
typedef int cmd ;
struct TYPE_7__ {int * hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int * HANDLE ;


 int CREATE_NO_WINDOW ;
 int CreateProcessW (int *,int *,int *,int *,int ,int,int *,int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int LOGC (char*) ;
 int PROCESS_ERROR_GENERIC ;
 int PROCESS_ERROR_MISSING_BINARY ;
 int PROCESS_SUCCESS ;
 int SDL_free (int *) ;
 scalar_t__ build_cmd (char*,int,char const* const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int * utf8_to_wide_char (char*) ;

enum process_result
cmd_execute(const char *path, const char *const argv[], HANDLE *handle) {
    STARTUPINFOW si;
    PROCESS_INFORMATION pi;
    memset(&si, 0, sizeof(si));
    si.cb = sizeof(si);

    char cmd[256];
    if (build_cmd(cmd, sizeof(cmd), argv)) {
        *handle = ((void*)0);
        return PROCESS_ERROR_GENERIC;
    }

    wchar_t *wide = utf8_to_wide_char(cmd);
    if (!wide) {
        LOGC("Could not allocate wide char string");
        return PROCESS_ERROR_GENERIC;
    }




    int flags = 0;

    if (!CreateProcessW(((void*)0), wide, ((void*)0), ((void*)0), FALSE, flags, ((void*)0), ((void*)0), &si,
                        &pi)) {
        SDL_free(wide);
        *handle = ((void*)0);
        if (GetLastError() == ERROR_FILE_NOT_FOUND) {
            return PROCESS_ERROR_MISSING_BINARY;
        }
        return PROCESS_ERROR_GENERIC;
    }

    SDL_free(wide);
    *handle = pi.hProcess;
    return PROCESS_SUCCESS;
}
