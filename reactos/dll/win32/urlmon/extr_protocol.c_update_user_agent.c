
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int INTERNET_OPTION_USER_AGENT ;
 int InternetSetOptionW (scalar_t__,int ,int *,int ) ;
 scalar_t__ internet_session ;
 int strlenW (int *) ;

void update_user_agent(WCHAR *user_agent)
{
    if(internet_session)
        InternetSetOptionW(internet_session, INTERNET_OPTION_USER_AGENT, user_agent, strlenW(user_agent));
}
