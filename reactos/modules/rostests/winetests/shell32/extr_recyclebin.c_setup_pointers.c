
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 void* pSHFileOperationA ;
 void* pSHQueryRecycleBinA ;

__attribute__((used)) static void setup_pointers(void)
{
    HMODULE hshell32 = GetModuleHandleA("shell32.dll");
    pSHQueryRecycleBinA = (void*)GetProcAddress(hshell32, "SHQueryRecycleBinA");
    pSHFileOperationA = (void*)GetProcAddress(hshell32, "SHFileOperationA");
}
