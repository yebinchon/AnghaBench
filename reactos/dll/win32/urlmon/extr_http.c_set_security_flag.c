
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int flags ;
struct TYPE_4__ {int request; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ HttpProtocol ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int INTERNET_OPTION_SECURITY_FLAGS ;
 int InternetSetOptionW (int ,int ,int *,int) ;

__attribute__((used)) static inline BOOL set_security_flag(HttpProtocol *This, DWORD flags)
{
    BOOL res;

    res = InternetSetOptionW(This->base.request, INTERNET_OPTION_SECURITY_FLAGS, &flags, sizeof(flags));
    if(!res)
        ERR("Failed to set security flags: %x\n", flags);

    return res;
}
