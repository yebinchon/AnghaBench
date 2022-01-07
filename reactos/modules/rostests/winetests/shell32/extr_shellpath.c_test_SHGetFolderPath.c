
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ S_OK ;
 int getFolderName (int) ;
 int ok (int,char*,int ,scalar_t__) ;
 scalar_t__ pSHGetFolderPathA (int *,int,int *,int ,char*) ;

__attribute__((used)) static void test_SHGetFolderPath(BOOL optional, int folder)
{
    char path[MAX_PATH];
    HRESULT hr;

    if (!pSHGetFolderPathA) return;

    hr = pSHGetFolderPathA(((void*)0), folder, ((void*)0), SHGFP_TYPE_CURRENT, path);
    ok(hr == S_OK || optional,
     "SHGetFolderPathA(NULL, %s, NULL, SHGFP_TYPE_CURRENT, path) failed: 0x%08x\n", getFolderName(folder), hr);
}
