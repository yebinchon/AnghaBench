
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {char const* member_0; char const* member_1; } ;
typedef int IShellItem ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ COMDLG_FILTERSPEC ;


 int DeleteFileW (char const*) ;
 int GetCurrentDirectoryW (int,char*) ;
 int IID_IShellItem ;
 int IShellItem_Release (int *) ;
 int MAX_PATH ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 scalar_t__ pSHCreateItemFromParsingName (char*,int *,int *,void**) ;
 int test_filename_opendlg (char const*,int *,char const*,TYPE_1__ const*,int,char const*) ;
 int test_filename_savedlg (char const*,char const*,TYPE_1__ const*,int,char const*) ;
 int touch_file (char const*) ;

__attribute__((used)) static void test_filename(void)
{
    IShellItem *psi_current;
    HRESULT hr;
    WCHAR buf[MAX_PATH];

    static const WCHAR filename_noextW[] = {'w','i','n','e','t','e','s','t',0};
    static const WCHAR filename_dotextW[] = {'w','i','n','e','t','e','s','t','.',0};
    static const WCHAR filename_dotanddefW[] = {'w','i','n','e','t','e','s','t','.','.','w','t','e',0};
    static const WCHAR filename_defextW[] = {'w','i','n','e','t','e','s','t','.','w','t','e',0};
    static const WCHAR filename_ext1W[] = {'w','i','n','e','t','e','s','t','.','w','t','1',0};
    static const WCHAR filename_ext2W[] = {'w','i','n','e','t','e','s','t','.','w','t','2',0};
    static const WCHAR filename_ext1anddefW[] =
        {'w','i','n','e','t','e','s','t','.','w','t','1','.','w','t','e',0};
    static const WCHAR defextW[] = {'w','t','e',0};
    static const WCHAR desc1[] = {'d','e','s','c','r','i','p','t','i','o','n','1',0};
    static const WCHAR desc2[] = {'d','e','s','c','r','i','p','t','i','o','n','2',0};
    static const WCHAR descdef[] = {'d','e','f','a','u','l','t',' ','d','e','s','c',0};
    static const WCHAR ext1[] = {'*','.','w','t','1',0};
    static const WCHAR ext2[] = {'*','.','w','t','2',0};
    static const WCHAR extdef[] = {'*','.','w','t','e',0};
    static const WCHAR complexext[] = {'*','.','w','t','2',';','*','.','w','t','1',0};

    static const COMDLG_FILTERSPEC filterspec[] = {
        { desc1, ext1 }, { desc2, ext2 }, { descdef, extdef }
    };
    static const COMDLG_FILTERSPEC filterspec2[] = {
        { desc1, complexext }
    };


    test_filename_savedlg(filename_noextW, ((void*)0), ((void*)0), 0, filename_noextW);

    test_filename_savedlg(filename_noextW, defextW, ((void*)0), 0, filename_defextW);

    test_filename_savedlg(filename_dotextW, defextW, ((void*)0), 0, filename_dotanddefW);

    test_filename_savedlg(filename_defextW, defextW, ((void*)0), 0, filename_defextW);

    test_filename_savedlg(filename_ext1W, defextW, ((void*)0), 0, filename_ext1anddefW);

    test_filename_savedlg(filename_noextW, defextW, filterspec, 2, filename_ext1W);

    test_filename_savedlg(filename_noextW, defextW, filterspec, 3, filename_ext1W);

    test_filename_savedlg(filename_noextW, defextW, filterspec2, 1, filename_ext2W);

    GetCurrentDirectoryW(MAX_PATH, buf);
    ok(!!pSHCreateItemFromParsingName, "SHCreateItemFromParsingName is missing.\n");
    hr = pSHCreateItemFromParsingName(buf, ((void*)0), &IID_IShellItem, (void**)&psi_current);
    ok(hr == S_OK, "Got 0x%08x\n", hr);

    touch_file(filename_noextW);
    touch_file(filename_defextW);
    touch_file(filename_ext2W);


    test_filename_opendlg(filename_noextW, psi_current, defextW, ((void*)0), 0, filename_noextW);

    test_filename_opendlg(filename_noextW, psi_current, defextW, filterspec, 2, filename_noextW);

    DeleteFileW(filename_noextW);

    test_filename_opendlg(filename_noextW, psi_current, defextW, ((void*)0), 0, filename_defextW);
    if(0)
    {

    test_filename_opendlg(filename_noextW, psi_current, ((void*)0), filterspec, 2, ((void*)0));
    }

    IShellItem_Release(psi_current);
    DeleteFileW(filename_defextW);
    DeleteFileW(filename_ext2W);
}
