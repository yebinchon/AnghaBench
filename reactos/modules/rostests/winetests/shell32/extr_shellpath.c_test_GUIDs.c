
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLSID_CommonDocuments ;
 int CLSID_ControlPanel ;
 int CLSID_Internet ;
 int CLSID_MyComputer ;
 int CLSID_MyDocuments ;
 int CLSID_NetworkExplorerFolder ;
 int CLSID_NetworkPlaces ;
 int CLSID_Printers ;
 int CLSID_RecycleBin ;
 int CSIDL_BITBUCKET ;
 int CSIDL_COMMON_DOCUMENTS ;
 int CSIDL_CONTROLS ;
 int CSIDL_DRIVES ;
 int CSIDL_INTERNET ;
 int CSIDL_NETWORK ;
 int CSIDL_PERSONAL ;
 int CSIDL_PRINTERS ;
 int _CLSID_Documents ;
 int matchGUID (int ,int *,int *) ;

__attribute__((used)) static void test_GUIDs(void)
{
    matchGUID(CSIDL_BITBUCKET, &CLSID_RecycleBin, ((void*)0));
    matchGUID(CSIDL_CONTROLS, &CLSID_ControlPanel, ((void*)0));
    matchGUID(CSIDL_DRIVES, &CLSID_MyComputer, ((void*)0));
    matchGUID(CSIDL_INTERNET, &CLSID_Internet, ((void*)0));
    matchGUID(CSIDL_NETWORK, &CLSID_NetworkPlaces, &CLSID_NetworkExplorerFolder);
    matchGUID(CSIDL_PERSONAL, &CLSID_MyDocuments, &_CLSID_Documents );
    matchGUID(CSIDL_COMMON_DOCUMENTS, &CLSID_CommonDocuments, ((void*)0));
    matchGUID(CSIDL_PRINTERS, &CLSID_Printers, ((void*)0));
}
