
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;


 int DoTest1 (int ) ;
 int DoTest2 (int ) ;
 int DoTest3 (int ) ;
 int EndDialog (int ,int ) ;




 int IDOK ;
 int MAKEWPARAM (int,int ) ;
 int PostMessage (int ,int ,int ,int ) ;
 int WM_COMMAND ;

__attribute__((used)) static void
OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    switch (id)
    {
        case 130:
            DoTest1(hwnd);
            PostMessage(hwnd, WM_COMMAND, MAKEWPARAM(129, 0), 0);
            break;
        case 129:
            DoTest2(hwnd);
            PostMessage(hwnd, WM_COMMAND, MAKEWPARAM(128, 0), 0);
            break;
        case 128:
            DoTest3(hwnd);
            PostMessage(hwnd, WM_COMMAND, MAKEWPARAM(131, 0), 0);
            break;
        case 131:
            EndDialog(hwnd, IDOK);
            break;
    }
}
