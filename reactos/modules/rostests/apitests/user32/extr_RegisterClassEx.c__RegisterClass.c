
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WNDPROC ;
struct TYPE_3__ {int member_0; int hInstance; int lpszClassName; int member_2; int member_1; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef int UINT ;
typedef int LPCWSTR ;
typedef int HINSTANCE ;
typedef int ATOM ;


 int RegisterClassExW (TYPE_1__*) ;

__attribute__((used)) static ATOM _RegisterClass(LPCWSTR lpwszClassName, HINSTANCE hInstance, UINT style, WNDPROC lpfnWndProc)
{
    WNDCLASSEXW wcex = {sizeof(WNDCLASSEXW), style, lpfnWndProc};
    wcex.lpszClassName = lpwszClassName;
    wcex.hInstance = hInstance;
    return RegisterClassExW(&wcex);
}
