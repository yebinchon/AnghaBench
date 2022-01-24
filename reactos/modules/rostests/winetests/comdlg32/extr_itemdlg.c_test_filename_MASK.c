#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {char const* member_0; char const* member_1; } ;
typedef  int /*<<< orphan*/  IShellItem ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ COMDLG_FILTERSPEC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  IID_IShellItem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,char const*,TYPE_1__ const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,TYPE_1__ const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(void)
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

    /* No extension */
    FUNC6(filename_noextW, NULL, NULL, 0, filename_noextW);
    /* Default extension */
    FUNC6(filename_noextW, defextW, NULL, 0, filename_defextW);
    /* Default extension on filename ending with a . */
    FUNC6(filename_dotextW, defextW, NULL, 0, filename_dotanddefW);
    /* Default extension on filename with default extension */
    FUNC6(filename_defextW, defextW, NULL, 0, filename_defextW);
    /* Default extension on filename with another extension */
    FUNC6(filename_ext1W, defextW, NULL, 0, filename_ext1anddefW);
    /* Default extension, filterspec without default extension */
    FUNC6(filename_noextW, defextW, filterspec, 2, filename_ext1W);
    /* Default extension, filterspec with default extension */
    FUNC6(filename_noextW, defextW, filterspec, 3, filename_ext1W);
    /* Default extension, filterspec with "complex" extension */
    FUNC6(filename_noextW, defextW, filterspec2, 1, filename_ext2W);

    FUNC1(MAX_PATH, buf);
    FUNC3(!!&pSHCreateItemFromParsingName, "SHCreateItemFromParsingName is missing.\n");
    hr = FUNC4(buf, NULL, &IID_IShellItem, (void**)&psi_current);
    FUNC3(hr == S_OK, "Got 0x%08x\n", hr);

    FUNC7(filename_noextW);
    FUNC7(filename_defextW);
    FUNC7(filename_ext2W);

    /* IFileOpenDialog, default extension */
    FUNC5(filename_noextW, psi_current, defextW, NULL, 0, filename_noextW);
    /* IFileOpenDialog, default extension and filterspec */
    FUNC5(filename_noextW, psi_current, defextW, filterspec, 2, filename_noextW);

    FUNC0(filename_noextW);
    /* IFileOpenDialog, default extension, noextW deleted */
    FUNC5(filename_noextW, psi_current, defextW, NULL, 0, filename_defextW);
    if(0) /* Interactive */
    {
    /* IFileOpenDialog, filterspec, no default extension, noextW deleted */
    FUNC5(filename_noextW, psi_current, NULL, filterspec, 2, NULL);
    }

    FUNC2(psi_current);
    FUNC0(filename_defextW);
    FUNC0(filename_ext2W);
}