
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibraryA (char*) ;
 scalar_t__ hAdvPack ;
 void* pAddDelBackupEntry ;
 void* pAdvInstallFile ;
 void* pExtractFiles ;
 void* pExtractFilesW ;

__attribute__((used)) static void init_function_pointers(void)
{
    hAdvPack = LoadLibraryA("advpack.dll");

    if (hAdvPack)
    {
        pAddDelBackupEntry = (void *)GetProcAddress(hAdvPack, "AddDelBackupEntry");
        pExtractFiles = (void *)GetProcAddress(hAdvPack, "ExtractFiles");
        pExtractFilesW = (void *)GetProcAddress(hAdvPack, "ExtractFilesW");
        pAdvInstallFile = (void*)GetProcAddress(hAdvPack, "AdvInstallFile");
    }
}
