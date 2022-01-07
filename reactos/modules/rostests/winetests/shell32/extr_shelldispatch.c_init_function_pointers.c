
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 void* pSHGetNameFromIDList ;

__attribute__((used)) static void init_function_pointers(void)
{
    HMODULE hshell32;

    hshell32 = GetModuleHandleA("shell32.dll");
    pSHGetNameFromIDList = (void*)GetProcAddress(hshell32, "SHGetNameFromIDList");
}
