
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPTSTR ;
typedef int DWORD ;


 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int WriteFile (int ,int ,int,int *,int *) ;
 int _T (char*) ;
 int _tcslen (int ) ;

VOID ConOutPuts (LPTSTR szText)
{
 DWORD dwWritten;

 WriteFile (GetStdHandle (STD_OUTPUT_HANDLE), szText, _tcslen(szText), &dwWritten, ((void*)0));
 WriteFile (GetStdHandle (STD_OUTPUT_HANDLE), _T("\n"), 1, &dwWritten, ((void*)0));
}
