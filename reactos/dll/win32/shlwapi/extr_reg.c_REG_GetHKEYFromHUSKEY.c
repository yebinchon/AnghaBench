
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ HKCUkey; scalar_t__ HKLMkey; } ;
typedef TYPE_1__* LPSHUSKEY ;
typedef void* HUSKEY ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ BOOL ;


 scalar_t__ HKEY_CLASSES_ROOT ;
 scalar_t__ HKEY_CURRENT_CONFIG ;
 scalar_t__ HKEY_CURRENT_USER ;
 scalar_t__ HKEY_DYN_DATA ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 scalar_t__ HKEY_PERFORMANCE_DATA ;
 scalar_t__ HKEY_USERS ;
 scalar_t__ REG_HKCU ;

__attribute__((used)) static HKEY REG_GetHKEYFromHUSKEY(HUSKEY hUSKey, BOOL which)
{
        HKEY test = hUSKey;
        LPSHUSKEY mihk = hUSKey;

 if ((test == HKEY_CLASSES_ROOT) ||
     (test == HKEY_CURRENT_CONFIG) ||
     (test == HKEY_CURRENT_USER) ||
     (test == HKEY_DYN_DATA) ||
     (test == HKEY_LOCAL_MACHINE) ||
     (test == HKEY_PERFORMANCE_DATA) ||




     (test == HKEY_USERS)) return test;
 if (which == REG_HKCU) return mihk->HKCUkey;
 return mihk->HKLMkey;
}
