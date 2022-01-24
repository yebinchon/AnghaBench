#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  credui_info ;
typedef  char WCHAR ;
struct TYPE_3__ {int cbSize; char const* pszCaptionText; int /*<<< orphan*/ * hbmBanner; int /*<<< orphan*/ * pszMessageText; int /*<<< orphan*/ * hwndParent; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ CREDUI_INFOW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int CREDUI_FLAGS_ALWAYS_SHOW_UI ; 
 int CREDUI_FLAGS_DO_NOT_PERSIST ; 
 int CREDUI_FLAGS_EXPECT_CONFIRMATION ; 
 int CREDUI_FLAGS_GENERIC_CREDENTIALS ; 
 int CREDUI_FLAGS_INCORRECT_PASSWORD ; 
 int CREDUI_FLAGS_PERSIST ; 
 int CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_CANCELLED ; 
 scalar_t__ ERROR_INVALID_FLAGS ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC4(void)
{
    static const WCHAR wszServerName[] = {'W','i','n','e','T','e','s','t',0};
    DWORD ret;
    WCHAR username[256];
    WCHAR password[256];
    CREDUI_INFOW credui_info;
    BOOL save = FALSE;

    credui_info.cbSize = sizeof(credui_info);
    credui_info.hwndParent = NULL;
    credui_info.pszMessageText = NULL;
    credui_info.hbmBanner = NULL;

    ret = FUNC1(NULL, TRUE);
    FUNC3(ret == ERROR_INVALID_PARAMETER /* 2003 + */ || ret == ERROR_NOT_FOUND /* XP */,
        "CredUIConfirmCredentials should have returned ERROR_INVALID_PARAMETER or ERROR_NOT_FOUND instead of %d\n", ret);

    ret = FUNC1(wszServerName, TRUE);
    FUNC3(ret == ERROR_NOT_FOUND, "CredUIConfirmCredentials should have returned ERROR_NOT_FOUND instead of %d\n", ret);

    username[0] = '\0';
    password[0] = '\0';
    ret = FUNC2(NULL, NULL, NULL, 0, username,
                                      FUNC0(username),
                                      password, FUNC0(password),
                                      NULL, CREDUI_FLAGS_ALWAYS_SHOW_UI);
    FUNC3(ret == ERROR_INVALID_FLAGS, "CredUIPromptForCredentials should have returned ERROR_INVALID_FLAGS instead of %d\n", ret);

    ret = FUNC2(NULL, NULL, NULL, 0, username,
                                      FUNC0(username),
                                      password, FUNC0(password),
                                      NULL, CREDUI_FLAGS_ALWAYS_SHOW_UI | CREDUI_FLAGS_GENERIC_CREDENTIALS);
    FUNC3(ret == ERROR_INVALID_PARAMETER, "CredUIPromptForCredentials should have returned ERROR_INVALID_PARAMETER instead of %d\n", ret);

    ret = FUNC2(NULL, wszServerName, NULL, 0, username,
                                      FUNC0(username),
                                      password, FUNC0(password),
                                      NULL, CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX);
    FUNC3(ret == ERROR_INVALID_PARAMETER, "CredUIPromptForCredentials should have returned ERROR_INVALID_PARAMETER instead of %d\n", ret);

    if (winetest_interactive)
    {
        static const WCHAR wszCaption1[] = {'C','R','E','D','U','I','_','F','L','A','G','S','_','E','X','P','E','C','T','_','C','O','N','F','I','R','M','A','T','I','O','N',0};
        static const WCHAR wszCaption2[] = {'C','R','E','D','U','I','_','F','L','A','G','S','_','I','N','C','O','R','R','E','C','T','_','P','A','S','S','W','O','R','D','|',
            'C','R','E','D','U','I','_','F','L','A','G','S','_','E','X','P','E','C','T','_','C','O','N','F','I','R','M','A','T','I','O','N',0};
        static const WCHAR wszCaption3[] = {'C','R','E','D','U','I','_','F','L','A','G','S','_','D','O','_','N','O','T','_','P','E','R','S','I','S','T','|',
            'C','R','E','D','U','I','_','F','L','A','G','S','_','E','X','P','E','C','T','_','C','O','N','F','I','R','M','A','T','I','O','N',0};
        static const WCHAR wszCaption4[] = {'C','R','E','D','U','I','_','F','L','A','G','S','_','P','E','R','S','I','S','T','|',
            'C','R','E','D','U','I','_','F','L','A','G','S','_','E','X','P','E','C','T','_','C','O','N','F','I','R','M','A','T','I','O','N',0};

        ret = FUNC2(NULL, wszServerName, NULL, 0, username,
                                          FUNC0(username),
                                          password, FUNC0(password),
                                          &save, CREDUI_FLAGS_EXPECT_CONFIRMATION);
        FUNC3(ret == ERROR_SUCCESS || ret == ERROR_CANCELLED, "CredUIPromptForCredentials failed with error %d\n", ret);
        if (ret == ERROR_SUCCESS)
        {
            ret = FUNC1(wszServerName, FALSE);
            FUNC3(ret == ERROR_SUCCESS, "CredUIConfirmCredentials failed with error %d\n", ret);
        }

        credui_info.pszCaptionText = wszCaption1;
        ret = FUNC2(&credui_info, wszServerName, NULL, ERROR_ACCESS_DENIED,
                                          username, FUNC0(username),
                                          password, FUNC0(password),
                                          &save, CREDUI_FLAGS_EXPECT_CONFIRMATION);
        FUNC3(ret == ERROR_SUCCESS || ret == ERROR_CANCELLED, "CredUIPromptForCredentials failed with error %d\n", ret);
        if (ret == ERROR_SUCCESS)
        {
            ret = FUNC1(wszServerName, FALSE);
            FUNC3(ret == ERROR_SUCCESS, "CredUIConfirmCredentials failed with error %d\n", ret);
        }

        credui_info.pszCaptionText = wszCaption2;
        ret = FUNC2(&credui_info, wszServerName, NULL, 0,
                                          username, FUNC0(username),
                                          password, FUNC0(password),
                                          NULL, CREDUI_FLAGS_INCORRECT_PASSWORD|CREDUI_FLAGS_EXPECT_CONFIRMATION);
        FUNC3(ret == ERROR_SUCCESS || ret == ERROR_CANCELLED, "CredUIPromptForCredentials failed with error %d\n", ret);
        if (ret == ERROR_SUCCESS)
        {
            ret = FUNC1(wszServerName, FALSE);
            FUNC3(ret == ERROR_SUCCESS, "CredUIConfirmCredentials failed with error %d\n", ret);
        }


        save = TRUE;
        credui_info.pszCaptionText = wszCaption3;
        ret = FUNC2(&credui_info, wszServerName, NULL, 0,
                                          username, FUNC0(username),
                                          password, FUNC0(password),
                                          &save, CREDUI_FLAGS_DO_NOT_PERSIST|CREDUI_FLAGS_EXPECT_CONFIRMATION);
        FUNC3(ret == ERROR_SUCCESS || ret == ERROR_CANCELLED, "CredUIPromptForCredentials failed with error %d\n", ret);
        FUNC3(save, "save flag should have been untouched\n");

        save = FALSE;
        credui_info.pszCaptionText = wszCaption4;
        ret = FUNC2(&credui_info, wszServerName, NULL, 0,
                                          username, FUNC0(username),
                                          password, FUNC0(password),
                                          &save, CREDUI_FLAGS_PERSIST|CREDUI_FLAGS_EXPECT_CONFIRMATION);
        FUNC3(ret == ERROR_SUCCESS || ret == ERROR_CANCELLED, "CredUIPromptForCredentials failed with error %d\n", ret);
        FUNC3(!save, "save flag should have been untouched\n");
        if (ret == ERROR_SUCCESS)
        {
            ret = FUNC1(wszServerName, FALSE);
            FUNC3(ret == ERROR_SUCCESS, "CredUIConfirmCredentials failed with error %d\n", ret);
        }

    }
}