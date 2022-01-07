
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int catmgr; scalar_t__ langkey; scalar_t__ tipkey; } ;
typedef TYPE_1__ EnumTfLanguageProfiles ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int ITfCategoryMgr_Release (int ) ;
 int RegCloseKey (scalar_t__) ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static void EnumTfLanguageProfiles_Destructor(EnumTfLanguageProfiles *This)
{
    TRACE("destroying %p\n", This);
    RegCloseKey(This->tipkey);
    if (This->langkey)
        RegCloseKey(This->langkey);
    ITfCategoryMgr_Release(This->catmgr);
    HeapFree(GetProcessHeap(),0,This);
}
