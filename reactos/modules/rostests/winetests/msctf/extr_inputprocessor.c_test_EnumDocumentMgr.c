
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int ITfThreadMgr ;
typedef int ITfDocumentMgr ;
typedef int IEnumTfDocumentMgrs ;
typedef int HRESULT ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ IEnumTfDocumentMgrs_Next (int *,int,int **,int *) ;
 int IEnumTfDocumentMgrs_Release (int *) ;
 int ITfDocumentMgr_Release (int *) ;
 int ITfThreadMgr_EnumDocumentMgrs (int *,int **) ;
 int SUCCEEDED (int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*) ;

__attribute__((used)) static void test_EnumDocumentMgr(ITfThreadMgr *tm, ITfDocumentMgr *search, ITfDocumentMgr *absent)
{
    HRESULT hr;
    IEnumTfDocumentMgrs* pEnum;
    BOOL found = FALSE;
    BOOL notfound = TRUE;

    hr = ITfThreadMgr_EnumDocumentMgrs(tm,&pEnum);
    ok(SUCCEEDED(hr),"EnumDocumentMgrs failed\n");
    if (SUCCEEDED(hr))
    {
        ULONG fetched;
        ITfDocumentMgr *dm;
        while (IEnumTfDocumentMgrs_Next(pEnum, 1, &dm, &fetched) == S_OK)
        {
            if (!search)
                found = TRUE;
            else if (search == dm)
                found = TRUE;
            if (absent && dm == absent)
                notfound = FALSE;
            ITfDocumentMgr_Release(dm);
        }
        IEnumTfDocumentMgrs_Release(pEnum);
    }
    if (search)
        ok(found,"Did not find proper ITfDocumentMgr\n");
    else
        ok(!found,"Found an ITfDocumentMgr we should should not have\n");
    if (absent)
        ok(notfound,"Found an ITfDocumentMgr we believe should be absent\n");
}
