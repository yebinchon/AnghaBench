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
struct TYPE_3__ {scalar_t__ langid; int /*<<< orphan*/  guidProfile; int /*<<< orphan*/  catid; int /*<<< orphan*/  clsid; } ;
typedef  TYPE_1__ TF_LANGUAGEPROFILE ;
typedef  int /*<<< orphan*/  IEnumTfLanguageProfiles ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FakeService ; 
 scalar_t__ E_INVALIDARG ; 
 int FALSE ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  GUID_TFCAT_TIP_KEYBOARD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int TRUE ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ gLangid ; 
 int /*<<< orphan*/  g_ipp ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    BOOL found = FALSE;
    IEnumTfLanguageProfiles *ppEnum;
    HRESULT hr;

    hr = FUNC2(g_ipp, gLangid, NULL);
    FUNC6(hr == E_INVALIDARG, "EnumLanguageProfiles failed: %x\n", hr);

    if (FUNC4(FUNC2(g_ipp,gLangid,&ppEnum)))
    {
        TF_LANGUAGEPROFILE profile;
        while (FUNC0(ppEnum,1,&profile,NULL)==S_OK)
        {
            if (FUNC3(&profile.clsid,&CLSID_FakeService))
            {
                found = TRUE;
                FUNC6(profile.langid == gLangid, "LangId Incorrect\n");
                FUNC6(FUNC3(&profile.catid,&GUID_TFCAT_TIP_KEYBOARD) ||
                   FUNC5(FUNC3(&profile.catid,&GUID_NULL) /* Win8 */), "CatId Incorrect\n");
                FUNC6(FUNC3(&profile.guidProfile,&CLSID_FakeService), "guidProfile Incorrect\n");
            }
        }
        FUNC1(ppEnum);
    }
    FUNC6(found,"Registered text service not found\n");
}