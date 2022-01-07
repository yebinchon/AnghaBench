
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;
typedef int * REFCLSID ;
typedef int IEnumCLSID ;
typedef int ICatInformation ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int CLSCTX_INPROC_SERVER ;
 int CLSIDFromString (char const*,int *) ;
 int CLSID_StdComponentCategoriesMgr ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ ICatInformation_EnumClassesOfCategories (int *,int,int *,int,int *,int **) ;
 int ICatInformation_Release (int *) ;
 scalar_t__ IEnumGUID_Next (int *,int,int *,int*) ;
 int IEnumGUID_Release (int *) ;
 int IID_ICatInformation ;
 int IsEqualGUID (int *,int *) ;
 int OleInitialize (int *) ;
 int OleUninitialize () ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int ok_ole_success (scalar_t__,char*) ;
 scalar_t__ register_testentry () ;
 int skip (char*) ;
 int unregister_testentry () ;

__attribute__((used)) static void do_enum(void)
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

 CLSIDFromString(szCatID,the_cat);
 CLSIDFromString(szGuid,&wanted_guid);

 OleInitialize(((void*)0));

 hr = CoCreateInstance(rclsid,((void*)0),CLSCTX_INPROC_SERVER,
   &IID_ICatInformation, (void **)&pICat);
 ok_ole_success(hr, "CoCreateInstance");

 hr = ICatInformation_EnumClassesOfCategories(pICat, -1, ((void*)0), -1, ((void*)0),
   &pIEnum);
 ok_ole_success(hr,"ICatInformation_EnumClassesOfCategories");

 IEnumGUID_Release(pIEnum);

 hr = ICatInformation_EnumClassesOfCategories(pICat, 1, the_cat, -1, ((void*)0),
   &pIEnum);
 ok_ole_success(hr,"ICatInformation_EnumClassesOfCategories");

 hr = IEnumGUID_Next(pIEnum,1,the_guid, &fetched);
 ok (hr == S_FALSE,"Expected S_FALSE, got 0x%08x\n", hr);
 ok (fetched == 0,"Fetched wrong number of guids %u\n",fetched);
 IEnumGUID_Release(pIEnum);

 if (register_testentry())
        {
            hr = ICatInformation_EnumClassesOfCategories(pICat, 1, the_cat, -1, ((void*)0), &pIEnum);
            ok_ole_success(hr,"ICatInformation_EnumClassesOfCategories");

            hr = IEnumGUID_Next(pIEnum,1,the_guid, &fetched);
            ok (hr == S_OK,"Expected S_OK, got 0x%08x\n", hr);
            ok (fetched == 1,"Fetched wrong number of guids %u\n",fetched);
            ok (IsEqualGUID(the_guid,&wanted_guid),"Guids do not match\n");

            IEnumGUID_Release(pIEnum);
            unregister_testentry();
        }
        else skip( "Could not register the test category\n" );

 ICatInformation_Release(pICat);

 OleUninitialize();
}
