
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HINTERNET ;


 int FreeLibrary (scalar_t__) ;
 int InternetCloseHandle (scalar_t__) ;
 int free_session () ;
 int free_tls_list () ;
 scalar_t__ get_internet_session (int *) ;
 scalar_t__ hCabinet ;
 int unregister_notif_wnd_class () ;

__attribute__((used)) static void process_detach(void)
{
    HINTERNET internet_session;

    internet_session = get_internet_session(((void*)0));
    if(internet_session)
        InternetCloseHandle(internet_session);

    if (hCabinet)
        FreeLibrary(hCabinet);

    free_session();
    free_tls_list();
    unregister_notif_wnd_class();
}
