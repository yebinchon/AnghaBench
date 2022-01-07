
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * WNDPROC ;
struct TYPE_3__ {int member_0; int * lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef int LPCWSTR ;
typedef int HINSTANCE ;
typedef scalar_t__ BOOL ;


 scalar_t__ GetClassInfoExW (int ,int ,TYPE_1__*) ;

__attribute__((used)) static WNDPROC _GetWndproc(LPCWSTR lpwszClassName, HINSTANCE hInstance)
{
    WNDCLASSEXW wcex = {sizeof(WNDCLASSEXW)};
    BOOL ret = GetClassInfoExW(hInstance, lpwszClassName, &wcex);
    return ret ? wcex.lpfnWndProc : ((void*)0);
}
