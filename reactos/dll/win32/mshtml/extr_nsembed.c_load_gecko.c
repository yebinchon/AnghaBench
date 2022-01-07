
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PRUnichar ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 scalar_t__ GetCurrentThreadId () ;
 int LeaveCriticalSection (int *) ;
 int MAX_PATH ;
 int MESSAGE (char*) ;
 int TRACE (char*) ;
 int cs_load_gecko ;
 int init_xpcom (int *) ;
 scalar_t__ install_wine_gecko () ;
 scalar_t__ load_wine_gecko (int *) ;
 int * pCompMgr ;

BOOL load_gecko(void)
{
    PRUnichar gre_path[MAX_PATH];
    BOOL ret = FALSE;

    static DWORD loading_thread;

    TRACE("()\n");


    if(loading_thread == GetCurrentThreadId())
        return pCompMgr != ((void*)0);

    EnterCriticalSection(&cs_load_gecko);

    if(!loading_thread) {
        loading_thread = GetCurrentThreadId();




        if(load_wine_gecko(gre_path)
           || (install_wine_gecko() && load_wine_gecko(gre_path)))

            ret = init_xpcom(gre_path);
        else
           MESSAGE("Could not load wine-gecko. HTML rendering will be disabled.\n");
    }else {
        ret = pCompMgr != ((void*)0);
    }

    LeaveCriticalSection(&cs_load_gecko);

    return ret;
}
