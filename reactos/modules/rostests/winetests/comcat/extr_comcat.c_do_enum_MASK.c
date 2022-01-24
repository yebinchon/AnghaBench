#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/ * REFCLSID ;
typedef  int /*<<< orphan*/  IEnumCLSID ;
typedef  int /*<<< orphan*/  ICatInformation ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSID_StdComponentCategoriesMgr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ICatInformation ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(void)
{
	HRESULT hr;
	REFCLSID rclsid = &CLSID_StdComponentCategoriesMgr;
	ICatInformation *pICat = (ICatInformation*)0xdeadbeef;
	GUID the_guid[1];
	GUID the_cat[1];
	GUID wanted_guid;
	ULONG fetched = -1;

        static const WCHAR szCatID[] = {
			'{',
			'd','e','a','d','c','a','f','e',
			'-','0','0','0','0','-','0','0','0','0',
			'-','0','0','0','0',
			'-','0','0','0','0','0','0','0','0','0','0','0','0',
			'}',0};
        static const WCHAR szGuid[] = {
			'{',
			'd','e','a','d','c','a','f','e','-',
			'b','e','e','d','-',
			'b','e','a','d','-',
			'd','e','a','d','-',
			'c','a','f','e','b','e','a','d','d','e','a','d',
			'}',0};

	IEnumCLSID *pIEnum =(IEnumCLSID*)0xdeadcafe;

	FUNC0(szCatID,the_cat);
	FUNC0(szGuid,&wanted_guid);

	FUNC7(NULL);

	hr = FUNC1(rclsid,NULL,CLSCTX_INPROC_SERVER,
			&IID_ICatInformation, (void **)&pICat);
	FUNC10(hr, "CoCreateInstance");

	hr = FUNC2(pICat, -1, NULL, -1, NULL,
			&pIEnum);
	FUNC10(hr,"ICatInformation_EnumClassesOfCategories");

	FUNC5(pIEnum);
	
	hr = FUNC2(pICat, 1, the_cat, -1, NULL, 
			&pIEnum);
	FUNC10(hr,"ICatInformation_EnumClassesOfCategories");

	hr = FUNC4(pIEnum,1,the_guid, &fetched);
	FUNC9 (hr == S_FALSE,"Expected S_FALSE, got 0x%08x\n", hr);
	FUNC9 (fetched == 0,"Fetched wrong number of guids %u\n",fetched);
	FUNC5(pIEnum);

	if (FUNC11())
        {
            hr = FUNC2(pICat, 1, the_cat, -1, NULL, &pIEnum);
            FUNC10(hr,"ICatInformation_EnumClassesOfCategories");

            hr = FUNC4(pIEnum,1,the_guid, &fetched);
            FUNC9 (hr == S_OK,"Expected S_OK, got 0x%08x\n", hr);
            FUNC9 (fetched == 1,"Fetched wrong number of guids %u\n",fetched);
            FUNC9 (FUNC6(the_guid,&wanted_guid),"Guids do not match\n");

            FUNC5(pIEnum);
            FUNC13();
        }
        else FUNC12( "Could not register the test category\n" );

	FUNC3(pICat);

	FUNC8();
}