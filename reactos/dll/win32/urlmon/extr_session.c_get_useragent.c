
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int ensure_useragent () ;
 int heap_strdupW (int ) ;
 int session_cs ;
 int user_agent ;

LPWSTR get_useragent(void)
{
    LPWSTR ret;

    ensure_useragent();

    EnterCriticalSection(&session_cs);
    ret = heap_strdupW(user_agent);
    LeaveCriticalSection(&session_cs);

    return ret;
}
