
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 int FALSE ;
 int TRUE ;
 int skip (char*) ;

__attribute__((used)) static BOOL is_access_denied(DWORD res, DWORD lasterror)
{
    if (!res && lasterror == ERROR_ACCESS_DENIED)
    {
        static int access_denied_reported = 0;
        if (!access_denied_reported)
        {
            access_denied_reported = 1;
            skip("More access rights are required for many tests\n");
        }
        return TRUE;
    }
    return FALSE;
}
