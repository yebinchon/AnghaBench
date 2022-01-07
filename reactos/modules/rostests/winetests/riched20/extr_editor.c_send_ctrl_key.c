
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LRESULT ;
typedef int HWND ;


 int SendMessageA (int ,int ,int ,int) ;
 int VK_CONTROL ;
 int WM_KEYDOWN ;
 int hold_key (int ) ;
 int release_key (int ) ;

__attribute__((used)) static LRESULT send_ctrl_key(HWND hwnd, UINT key)
{
    LRESULT result;
    hold_key(VK_CONTROL);
    result = SendMessageA(hwnd, WM_KEYDOWN, key, 1);
    release_key(VK_CONTROL);
    return result;
}
