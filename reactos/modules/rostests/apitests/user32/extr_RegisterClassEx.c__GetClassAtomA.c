
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ WNDCLASSEXA ;
typedef int WNDCLASSEX ;
typedef int LPCSTR ;
typedef int HINSTANCE ;
typedef int ATOM ;


 int GetClassInfoExA (int ,int ,TYPE_1__*) ;

__attribute__((used)) static ATOM _GetClassAtomA(LPCSTR lpszClassName, HINSTANCE hInstance)
{
    WNDCLASSEXA wcex = {sizeof(WNDCLASSEX)};
    return (ATOM)GetClassInfoExA(hInstance, lpszClassName, &wcex);
}
