
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int* PSIZE_T ;
typedef int CHAR ;


 int CP_UTF8 ;
 int WideCharToMultiByte (int ,int ,int const*,int,int *,int,int *,int *) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static CHAR*
UTF8fromUNICODE(const WCHAR *pszInput, PSIZE_T Size)
{
    ULONG Length;
    CHAR *pszOutput;

    if (!pszInput || !Size) return ((void*)0);

    Length = WideCharToMultiByte(CP_UTF8, 0, pszInput, -1, ((void*)0), 0, ((void*)0), ((void*)0));

    *Size = Length * sizeof(CHAR);

    pszOutput = (CHAR *) malloc(*Size);
    if (pszOutput)
    {
        WideCharToMultiByte(CP_UTF8, 0, pszInput, -1, pszOutput, Length, ((void*)0), ((void*)0));
    }

    return pszOutput;
}
