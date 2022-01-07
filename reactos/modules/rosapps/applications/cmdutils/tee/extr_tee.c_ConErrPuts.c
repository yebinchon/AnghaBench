
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPTSTR ;


 int ConErrPrintf (int ,int ) ;
 int _T (char*) ;

VOID ConErrPuts (LPTSTR szText)
{
 ConErrPrintf(_T("%s\n"),szText );
}
