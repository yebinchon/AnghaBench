
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef int LPCWSTR ;
typedef int HINSTANCE ;
typedef int ATOM ;


 int GetClassInfoExW (int ,int ,TYPE_1__*) ;

__attribute__((used)) static ATOM _GetClassAtom(LPCWSTR lpwszClassName, HINSTANCE hInstance)
{
    WNDCLASSEXW wcex = {sizeof(WNDCLASSEXW)};
    return (ATOM)GetClassInfoExW(hInstance, lpwszClassName, &wcex);
}
