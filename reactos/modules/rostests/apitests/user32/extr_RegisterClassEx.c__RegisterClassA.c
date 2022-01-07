
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WNDPROC ;
struct TYPE_3__ {int member_0; int hInstance; int lpszClassName; int member_2; int member_1; } ;
typedef TYPE_1__ WNDCLASSEXA ;
typedef int WNDCLASSEX ;
typedef int UINT ;
typedef int LPCSTR ;
typedef int HINSTANCE ;
typedef int ATOM ;


 int RegisterClassExA (TYPE_1__*) ;

__attribute__((used)) static ATOM _RegisterClassA(LPCSTR lpzClassName, HINSTANCE hInstance, UINT style, WNDPROC lpfnWndProc)
{
    WNDCLASSEXA wcex = {sizeof(WNDCLASSEX), style, lpfnWndProc};
    wcex.lpszClassName = lpzClassName;
    wcex.hInstance = hInstance;
    return RegisterClassExA(&wcex);
}
