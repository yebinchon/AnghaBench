
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int BYTE ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int ScriptLayout (int,int *,int *,int*) ;
 int WARN (char*) ;
 int resolveLines (int *,int const*,int) ;
 int resolveWhitespace (int,int const*,int *,int) ;

__attribute__((used)) static void BidiLines(int baselevel, LPWSTR pszOutLine, LPCWSTR pszLine, const WORD * pclsLine,
                      BYTE * plevelLine, int cchPara, const BOOL * pbrk)
{
    int cchLine = 0;
    int done = 0;
    int *run;

    run = HeapAlloc(GetProcessHeap(), 0, cchPara * sizeof(int));
    if (!run)
    {
        WARN("Out of memory\n");
        return;
    }

    do
    {

        cchLine = resolveLines(pszLine, pbrk, cchPara);


        resolveWhitespace(baselevel, pclsLine, plevelLine, cchLine);

        if (pszOutLine)
        {
            int i;

            ScriptLayout(cchLine, plevelLine, ((void*)0), run);
            for (i = 0; i < cchLine; i++)
                pszOutLine[done+run[i]] = pszLine[i];
        }

        pszLine += cchLine;
        plevelLine += cchLine;
        pbrk += pbrk ? cchLine : 0;
        pclsLine += cchLine;
        cchPara -= cchLine;
        done += cchLine;

    } while (cchPara);

    HeapFree(GetProcessHeap(), 0, run);
}
