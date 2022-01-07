
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetBindInfo ;
typedef int * HINTERNET ;


 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int InternetCloseHandle (int *) ;
 int * create_internet_session (int *) ;
 int * internet_session ;

HINTERNET get_internet_session(IInternetBindInfo *bind_info)
{
    HINTERNET new_session;

    if(internet_session)
        return internet_session;

    if(!bind_info)
        return ((void*)0);

    new_session = create_internet_session(bind_info);
    if(new_session && InterlockedCompareExchangePointer((void**)&internet_session, new_session, ((void*)0)))
        InternetCloseHandle(new_session);

    return internet_session;
}
