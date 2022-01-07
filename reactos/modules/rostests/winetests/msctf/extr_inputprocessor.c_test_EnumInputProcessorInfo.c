
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IEnumGUID ;
typedef int GUID ;
typedef int BOOL ;


 int CLSID_FakeService ;
 int FALSE ;
 scalar_t__ IEnumGUID_Next (int *,int,int *,int *) ;
 int IEnumGUID_Release (int *) ;
 int ITfInputProcessorProfiles_EnumInputProcessorInfo (int ,int **) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int g_ipp ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_EnumInputProcessorInfo(void)
{
    IEnumGUID *ppEnum;
    BOOL found = FALSE;

    if (SUCCEEDED(ITfInputProcessorProfiles_EnumInputProcessorInfo(g_ipp, &ppEnum)))
    {
        ULONG fetched;
        GUID g;
        while (IEnumGUID_Next(ppEnum, 1, &g, &fetched) == S_OK)
        {
            if(IsEqualGUID(&g,&CLSID_FakeService))
                found = TRUE;
        }
        IEnumGUID_Release(ppEnum);
    }
    ok(found,"Did not find registered text service\n");
}
