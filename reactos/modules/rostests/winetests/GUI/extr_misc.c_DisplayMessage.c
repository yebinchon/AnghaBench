
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPWSTR ;


 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int MessageBoxW (int *,int ,char*,int) ;

VOID DisplayMessage(LPWSTR lpMsg)
{
    MessageBoxW(((void*)0), lpMsg, L"Note!", MB_ICONEXCLAMATION|MB_OK);
}
