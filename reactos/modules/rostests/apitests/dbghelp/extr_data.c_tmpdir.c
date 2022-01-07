
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetTempPathA (int ,char*) ;
 int MAX_PATH ;
 int lstrcatA (char*,char*) ;
 char* szTempPath ;

__attribute__((used)) static const char* tmpdir()
{
    if (szTempPath[0] == '\0')
    {
        GetTempPathA(MAX_PATH, szTempPath);
        lstrcatA(szTempPath, "dbghelp_tst");
    }
    return szTempPath;
}
