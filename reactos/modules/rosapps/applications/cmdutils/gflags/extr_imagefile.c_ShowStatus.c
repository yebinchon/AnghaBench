
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 char* ImageFile ;
 int PrintFlags (int,int ) ;
 int wprintf (char*,...) ;

__attribute__((used)) static void ShowStatus(DWORD GlobalFlags, DWORD Ignored)
{
    if (GlobalFlags)
    {
        wprintf(L"Current Registry Settings for %s executable are: %08x\n", ImageFile, GlobalFlags);
        PrintFlags(GlobalFlags, 0);
    }
    else
    {
        wprintf(L"No Registry Settings for %s executable\n", ImageFile);
    }
    if (Ignored)
    {
        wprintf(L"The following settings were ignored: %08x\n", Ignored);
        PrintFlags(Ignored, 0);
    }
}
