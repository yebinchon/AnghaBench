
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int LanguageProfileNotifySink; } ;
typedef TYPE_1__ InputProcessorProfiles ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int TRACE (char*,TYPE_1__*) ;
 int free_sinks (int *) ;

__attribute__((used)) static void InputProcessorProfiles_Destructor(InputProcessorProfiles *This)
{
    TRACE("destroying %p\n", This);

    free_sinks(&This->LanguageProfileNotifySink);
    HeapFree(GetProcessHeap(),0,This);
}
