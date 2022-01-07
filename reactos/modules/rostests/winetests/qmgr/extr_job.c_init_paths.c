
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int GetTempFileNameW (char*,char*,int ,int ) ;
 int GetTempPathW (int,char*) ;
 int MAX_PATH ;
 int test_localPathA ;
 int test_localPathB ;
 int test_remotePathA ;
 int test_remotePathB ;

__attribute__((used)) static void init_paths(void)
{
    WCHAR tmpDir[MAX_PATH];
    WCHAR prefix[] = {'q', 'm', 'g', 'r', 0};

    GetTempPathW(MAX_PATH, tmpDir);

    GetTempFileNameW(tmpDir, prefix, 0, test_localPathA);
    GetTempFileNameW(tmpDir, prefix, 0, test_localPathB);
    GetTempFileNameW(tmpDir, prefix, 0, test_remotePathA);
    GetTempFileNameW(tmpDir, prefix, 0, test_remotePathB);
}
