
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwError; int dwResult; } ;
typedef TYPE_1__ INTERNET_ASYNC_RESULT ;
typedef int DWORD ;



 char const* wine_dbg_sprintf (char*,void*,...) ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static const char *debugstr_status_info(DWORD status, void *info)
{
    switch(status) {
    case 128: {
        INTERNET_ASYNC_RESULT *iar = info;
        return wine_dbg_sprintf("{%s, %d}", wine_dbgstr_longlong(iar->dwResult), iar->dwError);
    }
    default:
        return wine_dbg_sprintf("%p", info);
    }
}
