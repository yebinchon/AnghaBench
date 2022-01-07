
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ;
 int TRUE ;
 int skip (char*) ;

__attribute__((used)) static BOOL is_spooler_deactivated(DWORD res, DWORD lasterror)
{
    if (!res && lasterror == RPC_S_SERVER_UNAVAILABLE)
    {
        static int deactivated_spooler_reported = 0;
        if (!deactivated_spooler_reported)
        {
            deactivated_spooler_reported = 1;
            skip("The service 'Spooler' is required for many tests\n");
        }
        return TRUE;
    }
    return FALSE;
}
