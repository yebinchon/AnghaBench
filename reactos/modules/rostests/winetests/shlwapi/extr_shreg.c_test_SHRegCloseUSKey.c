
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ LONG ;
typedef int * HUSKEY ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int KEY_ALL_ACCESS ;
 int KEY_QUERY_VALUE ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pSHRegCloseUSKey (int *) ;
 scalar_t__ pSHRegOpenUSKeyW (char const*,int ,int *,int **,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHRegCloseUSKey(void)
{
    static const WCHAR localW[] = {'S','o','f','t','w','a','r','e',0};
    LONG ret;
    HUSKEY key;

    if (!pSHRegOpenUSKeyW || !pSHRegCloseUSKey)
    {
        win_skip("SHRegOpenUSKeyW or SHRegCloseUSKey not available\n");
        return;
    }

    ret = pSHRegCloseUSKey(((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "got %d\n", ret);

    ret = pSHRegOpenUSKeyW(localW, KEY_ALL_ACCESS, ((void*)0), &key, FALSE);
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = pSHRegCloseUSKey(key);
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);


    ret = pSHRegOpenUSKeyW(localW, KEY_QUERY_VALUE, ((void*)0), &key, FALSE);
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = pSHRegCloseUSKey(key);
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);
}
