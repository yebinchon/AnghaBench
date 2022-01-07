
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int ITfDocumentMgr ;
typedef int ITfContext ;
typedef int IEnumTfContexts ;
typedef int HRESULT ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ IEnumTfContexts_Next (int *,int,int **,int *) ;
 int IEnumTfContexts_Release (int *) ;
 int ITfContext_Release (int *) ;
 int ITfDocumentMgr_EnumContexts (int *,int **) ;
 int SUCCEEDED (int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*) ;

__attribute__((used)) static void test_EnumContexts(ITfDocumentMgr *dm, ITfContext *search)
{
    HRESULT hr;
    IEnumTfContexts* pEnum;
    BOOL found = FALSE;

    hr = ITfDocumentMgr_EnumContexts(dm,&pEnum);
    ok(SUCCEEDED(hr),"EnumContexts failed\n");
    if (SUCCEEDED(hr))
    {
        ULONG fetched;
        ITfContext *cxt;
        while (IEnumTfContexts_Next(pEnum, 1, &cxt, &fetched) == S_OK)
        {
            if (!search)
                found = TRUE;
            else if (search == cxt)
                found = TRUE;
            ITfContext_Release(cxt);
        }
        IEnumTfContexts_Release(pEnum);
    }
    if (search)
        ok(found,"Did not find proper ITfContext\n");
    else
        ok(!found,"Found an ITfContext we should should not have\n");
}
