
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSID ;
typedef char* LPSTR ;
typedef int DWORD ;


 int ConvertSidToStringSidA (int ,char**) ;
 int GetLastError () ;
 int LocalFree (char*) ;
 size_t SID_SLOTS ;
 int SetLastError (int) ;
 size_t debugsid_index ;
 char** debugsid_str ;
 int memcpy (char*,char*,int) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static const char* debugstr_sid(PSID sid)
{
    LPSTR sidstr;
    DWORD le = GetLastError();
    char* res = debugsid_str[debugsid_index];
    debugsid_index = (debugsid_index + 1) % SID_SLOTS;

    if (!ConvertSidToStringSidA(sid, &sidstr))
        sprintf(res, "ConvertSidToStringSidA failed le=%u", GetLastError());
    else if (strlen(sidstr) > sizeof(*debugsid_str) - 1)
    {
        memcpy(res, sidstr, sizeof(*debugsid_str) - 4);
        strcpy(res + sizeof(*debugsid_str) - 4, "...");
        LocalFree(sidstr);
    }
    else
    {
        strcpy(res, sidstr);
        LocalFree(sidstr);
    }

    SetLastError(le);
    return res;
}
