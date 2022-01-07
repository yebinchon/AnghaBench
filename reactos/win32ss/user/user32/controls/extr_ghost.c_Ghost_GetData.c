
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int GHOST_DATA ;


 int GWLP_USERDATA ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;

__attribute__((used)) static GHOST_DATA *
Ghost_GetData(HWND hwnd)
{
    return (GHOST_DATA *)GetWindowLongPtrW(hwnd, GWLP_USERDATA);
}
