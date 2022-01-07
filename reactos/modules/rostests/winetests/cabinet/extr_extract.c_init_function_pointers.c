
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int hCabinet ;
 void* pExtract ;

__attribute__((used)) static void init_function_pointers(void)
{
    hCabinet = GetModuleHandleA("cabinet.dll");

    pExtract = (void *)GetProcAddress(hCabinet, "Extract");
}
