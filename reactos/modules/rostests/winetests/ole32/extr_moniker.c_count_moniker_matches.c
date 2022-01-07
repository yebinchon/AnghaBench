
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IMoniker ;
typedef int IEnumMoniker ;
typedef int IBindCtx ;
typedef int HRESULT ;


 int CoTaskMemFree (int *) ;
 scalar_t__ IEnumMoniker_Next (int *,int,int **,int *) ;
 int IMoniker_GetDisplayName (int *,int *,int *,int **) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ S_OK ;
 int lstrcmpiW (int *,int ) ;
 int trace (char*,int) ;
 int wszFileName1 ;
 int wszFileName2 ;

__attribute__((used)) static int count_moniker_matches(IBindCtx * pbc, IEnumMoniker * spEM)
{
    IMoniker * spMoniker;
    int monCnt=0, matchCnt=0;

    while ((IEnumMoniker_Next(spEM, 1, &spMoniker, ((void*)0))==S_OK))
    {
        HRESULT hr;
        WCHAR * szDisplayn;
        monCnt++;
        hr=IMoniker_GetDisplayName(spMoniker, pbc, ((void*)0), &szDisplayn);
        if (SUCCEEDED(hr))
        {
            if (!lstrcmpiW(szDisplayn, wszFileName1) || !lstrcmpiW(szDisplayn, wszFileName2))
                matchCnt++;
            CoTaskMemFree(szDisplayn);
        }
    }
    trace("Total number of monikers is %i\n", monCnt);
    return matchCnt;
}
