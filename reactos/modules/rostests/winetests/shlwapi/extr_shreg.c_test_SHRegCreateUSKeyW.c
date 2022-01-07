
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ LONG ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int KEY_ALL_ACCESS ;
 int SHREGSET_FORCE_HKCU ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pSHRegCreateUSKeyW (char const*,int ,int *,int *,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHRegCreateUSKeyW(void)
{
    static const WCHAR subkeyW[] = {'s','u','b','k','e','y',0};
    LONG ret;

    if (!pSHRegCreateUSKeyW)
    {
        win_skip("SHRegCreateUSKeyW not available\n");
        return;
    }

    ret = pSHRegCreateUSKeyW(subkeyW, KEY_ALL_ACCESS, ((void*)0), ((void*)0), SHREGSET_FORCE_HKCU);
    ok(ret == ERROR_INVALID_PARAMETER, "got %d\n", ret);
}
