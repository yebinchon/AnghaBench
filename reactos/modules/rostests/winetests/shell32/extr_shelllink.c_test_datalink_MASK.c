#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {scalar_t__ dwSignature; } ;
struct TYPE_4__ {int /*<<< orphan*/  szwDarwinID; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IShellLinkW ;
typedef  int /*<<< orphan*/  IShellLinkDataList ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ EXP_DARWIN_LINK ;
typedef  int DWORD ;
typedef  TYPE_2__ DATABLOCK_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ShellLink ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ EXP_DARWIN_ID_SIG ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IShellLinkW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int SLDF_HAS_DARWINID ; 
 int SLDF_HAS_LOGO3ID ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  _IID_IShellLinkDataList ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  pGetLongPathNameA ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const WCHAR lnk[] = {
      ':',':','{','9','d','b','1','1','8','6','e','-','4','0','d','f','-','1',
      '1','d','1','-','a','a','8','c','-','0','0','c','0','4','f','b','6','7',
      '8','6','3','}',':','2','6',',','!','!','g','x','s','f','(','N','g',']',
      'q','F','`','H','{','L','s','A','C','C','E','S','S','F','i','l','e','s',
      '>','p','l','T',']','j','I','{','j','f','(','=','1','&','L','[','-','8',
      '1','-',']',':',':',0 };
    static const WCHAR comp[] = {
      '2','6',',','!','!','g','x','s','f','(','N','g',']','q','F','`','H','{',
      'L','s','A','C','C','E','S','S','F','i','l','e','s','>','p','l','T',']',
      'j','I','{','j','f','(','=','1','&','L','[','-','8','1','-',']',0 };
    IShellLinkDataList *dl = NULL;
    IShellLinkW *sl = NULL;
    HRESULT r;
    DWORD flags = 0;
    EXP_DARWIN_LINK *dar;

    r = FUNC0( &CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER,
                            &IID_IShellLinkW, (LPVOID*)&sl );
    FUNC10( r == S_OK ||
        FUNC8(r == E_NOINTERFACE), /* Win9x */
        "CoCreateInstance failed (0x%08x)\n", r);
    if (!sl)
    {
        FUNC12("no shelllink\n");
        return;
    }

    r = FUNC4( sl, &_IID_IShellLinkDataList, (LPVOID*) &dl );
    FUNC10( r == S_OK ||
        FUNC8(r == E_NOINTERFACE), /* NT4 */
        "IShellLinkW_QueryInterface failed (0x%08x)\n", r);

    if (!dl)
    {
        FUNC12("no datalink interface\n");
        FUNC5( sl );
        return;
    }

    flags = 0;
    r = FUNC2( dl, &flags );
    FUNC10( r == S_OK, "GetFlags failed\n");
    FUNC10( flags == 0, "GetFlags returned wrong flags\n");

    dar = (void*)-1;
    r = FUNC1( dl, EXP_DARWIN_ID_SIG, (LPVOID*) &dar );
    FUNC10( r == E_FAIL, "CopyDataBlock failed\n");
    FUNC10( dar == NULL, "should be null\n");

    if (!pGetLongPathNameA /* NT4 */)
        FUNC11("SetPath with NULL parameter crashes on NT4\n");
    else
    {
        r = FUNC6(sl, NULL);
        FUNC10(r == E_INVALIDARG, "SetPath returned wrong error (0x%08x)\n", r);
    }

    r = FUNC6(sl, lnk);
    FUNC10(r == S_OK, "SetPath failed\n");

if (0)
{
    /* the following crashes */
    FUNC2( dl, NULL );
}

    flags = 0;
    r = FUNC2( dl, &flags );
    FUNC10( r == S_OK, "GetFlags failed\n");
    /* SLDF_HAS_LOGO3ID is no longer supported on Vista+, filter it out */
    FUNC10( (flags & (~ SLDF_HAS_LOGO3ID)) == SLDF_HAS_DARWINID,
        "GetFlags returned wrong flags\n");

    dar = NULL;
    r = FUNC1( dl, EXP_DARWIN_ID_SIG, (LPVOID*) &dar );
    FUNC10( r == S_OK, "CopyDataBlock failed\n");

    FUNC10( dar && ((DATABLOCK_HEADER*)dar)->dwSignature == EXP_DARWIN_ID_SIG, "signature wrong\n");
    FUNC10( dar && 0==FUNC9(dar->szwDarwinID, comp ), "signature wrong\n");

    FUNC7( dar );

    FUNC3( dl );
    FUNC5( sl );
}