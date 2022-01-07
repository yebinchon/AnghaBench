
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwStructSize; unsigned int dwSchemeLength; int dwHostNameLength; unsigned int dwUserNameLength; unsigned int dwPasswordLength; unsigned int dwUrlPathLength; unsigned int dwExtraInfoLength; scalar_t__ nPort; } ;
typedef TYPE_1__ URL_COMPONENTS ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void reset_url_components( URL_COMPONENTS *uc )
{
    memset( uc, 0, sizeof(URL_COMPONENTS) );
    uc->dwStructSize = sizeof(URL_COMPONENTS);
    uc->dwSchemeLength = ~0u;
    uc->dwHostNameLength = 1;
    uc->nPort = 0;
    uc->dwUserNameLength = ~0u;
    uc->dwPasswordLength = ~0u;
    uc->dwUrlPathLength = ~0u;
    uc->dwExtraInfoLength = ~0u;
}
