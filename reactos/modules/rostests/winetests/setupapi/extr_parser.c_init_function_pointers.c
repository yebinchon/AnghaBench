
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int hSetupAPI ;
 void* pSetupEnumInfSectionsA ;
 void* pSetupGetFieldA ;
 void* pSetupGetFieldW ;

__attribute__((used)) static void init_function_pointers(void)
{
    hSetupAPI = GetModuleHandleA("setupapi.dll");



    pSetupGetFieldA = (void *)GetProcAddress(hSetupAPI, "pSetupGetField");
    pSetupGetFieldW = (void *)GetProcAddress(hSetupAPI, "pSetupGetField");
    pSetupEnumInfSectionsA = (void *)GetProcAddress(hSetupAPI, "SetupEnumInfSectionsA" );
}
