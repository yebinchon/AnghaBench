
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t numProviders; TYPE_1__* table; } ;
struct TYPE_3__ {int name; } ;
typedef int LPCWSTR ;
typedef size_t DWORD ;


 size_t BAD_PROVIDER_INDEX ;
 int lstrcmpW (int ,int ) ;
 TYPE_2__* providerTable ;

__attribute__((used)) static DWORD _findProviderIndexW(LPCWSTR lpProvider)
{
    DWORD ret = BAD_PROVIDER_INDEX;

    if (providerTable && providerTable->numProviders)
    {
        DWORD i;

        for (i = 0; i < providerTable->numProviders &&
         ret == BAD_PROVIDER_INDEX; i++)
            if (!lstrcmpW(lpProvider, providerTable->table[i].name))
                ret = i;
    }
    return ret;
}
