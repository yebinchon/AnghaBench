
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessageA (int,int ,scalar_t__,int ,int *,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (int *) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int dprintf (char*,scalar_t__,...) ;

DWORD ReportLastError(void)
{
    DWORD dwError = GetLastError();
    if (dwError != ERROR_SUCCESS) {
        PSTR msg = ((void*)0);
        if (FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER|FORMAT_MESSAGE_FROM_SYSTEM,
            0, dwError, MAKELANGID(LANG_NEUTRAL,SUBLANG_DEFAULT), (PSTR)&msg, 0, ((void*)0))) {
            if (msg != ((void*)0)) {
                dprintf("ReportLastError() %d - %s\n", dwError, msg);
            } else {
                dprintf("ERROR: ReportLastError() %d - returned TRUE but with no msg string!\n", dwError);
            }
        } else {
            dprintf("ReportLastError() %d - unknown error\n", dwError);
        }
        if (msg != ((void*)0)) {
            LocalFree(msg);
        }
    }
    return dwError;
}
