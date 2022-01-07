
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INTERNET_EXTENDED_ERROR ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int InternetGetLastResponseInfoA (scalar_t__*,char*,scalar_t__*) ;
 int trace (char*,scalar_t__,char*) ;

__attribute__((used)) static void trace_extended_error(DWORD error)
{
    DWORD code, buflen = 0;

    if (error != ERROR_INTERNET_EXTENDED_ERROR) return;
    if (!InternetGetLastResponseInfoA(&code, ((void*)0), &buflen) && GetLastError() == ERROR_INSUFFICIENT_BUFFER)
    {
        char *text = HeapAlloc(GetProcessHeap(), 0, ++buflen);
        InternetGetLastResponseInfoA(&code, text, &buflen);
        trace("%u %s\n", code, text);
        HeapFree(GetProcessHeap(), 0, text);
    }
}
