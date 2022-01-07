
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;


 int EN_CHANGE ;
 int EndDialog (int ,int) ;
 int GetParent (int ) ;


 int PropSheet_Changed (int ,int ) ;
 int TRUE ;

 int s_bNotified ;

__attribute__((used)) static void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    switch (id)
    {
        case 129:
        case 130:
            EndDialog(hwnd, id);
            break;
        case 128:
            if (codeNotify == EN_CHANGE)
            {
                s_bNotified = TRUE;
                PropSheet_Changed(GetParent(hwnd), hwnd);
            }
            break;
    }
}
