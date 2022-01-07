
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int BOOL ;


 scalar_t__ AddFontResourceExW (int ,int ,int ) ;
 scalar_t__ ExtractTTFFile (char*,int ) ;
 int FALSE ;
 int FR_PRIVATE ;
 int TRUE ;

__attribute__((used)) static BOOL InstallTempFont(LPWSTR TempFile)
{
    if (ExtractTTFFile(L"ReactOSTestTahoma.ttf", TempFile))
    {
        if (AddFontResourceExW(TempFile, FR_PRIVATE, 0) > 0)
        {
            return TRUE;
        }
    }

    return FALSE;
}
