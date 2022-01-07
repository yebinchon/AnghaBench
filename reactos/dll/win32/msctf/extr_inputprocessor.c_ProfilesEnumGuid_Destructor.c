
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int key; } ;
typedef TYPE_1__ ProfilesEnumGuid ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int RegCloseKey (int ) ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static void ProfilesEnumGuid_Destructor(ProfilesEnumGuid *This)
{
    TRACE("destroying %p\n", This);
    RegCloseKey(This->key);
    HeapFree(GetProcessHeap(),0,This);
}
