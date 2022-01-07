
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strA ;
typedef int WCHAR ;
typedef int ULONG ;
typedef scalar_t__ REFGUID ;
typedef int ITfCompartmentMgr ;
typedef int IEnumGUID ;
typedef int GUID ;
typedef int CHAR ;
typedef int BOOL ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int FALSE ;
 scalar_t__ IEnumGUID_Next (int *,int,int *,int *) ;
 int IEnumGUID_Release (int *) ;
 int ITfCompartmentMgr_EnumCompartments (int *,int **) ;
 scalar_t__ IsEqualGUID (scalar_t__,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ S_OK ;
 int StringFromGUID2 (int *,int *,int ) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,int *,int,int *,int,int ,int ) ;
 int ok (int,char*) ;
 int trace (char*,int *) ;

__attribute__((used)) static void enum_compartments(ITfCompartmentMgr *cmpmgr, REFGUID present, REFGUID absent)
{
    BOOL found,found2;
    IEnumGUID *ppEnum;
    found = FALSE;
    found2 = FALSE;
    if (SUCCEEDED(ITfCompartmentMgr_EnumCompartments(cmpmgr, &ppEnum)))
    {
        ULONG fetched;
        GUID g;
        while (IEnumGUID_Next(ppEnum, 1, &g, &fetched) == S_OK)
        {
            WCHAR str[50];
            CHAR strA[50];
            StringFromGUID2(&g,str,ARRAY_SIZE(str));
            WideCharToMultiByte(CP_ACP,0,str,-1,strA,sizeof(strA),0,0);
            trace("found %s\n",strA);
            if (present && IsEqualGUID(present,&g))
                found = TRUE;
            if (absent && IsEqualGUID(absent, &g))
                found2 = TRUE;
        }
        IEnumGUID_Release(ppEnum);
    }
    if (present)
        ok(found,"Did not find compartment\n");
    if (absent)
        ok(!found2,"Found compartment that should be absent\n");
}
